<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\Models\Affiliate;
use App\Models\Verification;
use App\User;
use Illuminate\Http\Request;
use Illuminate\Validation\Rule;
use Illuminate\Validation\ValidationException;
use App\Botlothus\SendMessege;

class VerificationController extends Controller
{
    public function index()
    {
        $verificationId = session()->get('verificationId', null);

        if (!empty($verificationId)) {
            $verification = Verification::where('id', $verificationId)
                ->whereNull('verified_at')
                ->where('expired_at', '>', time())
                ->first();

            if (!empty($verification)) {

                $user = User::find($verification->user_id);

                if (!empty($user) and $user->status != User::$active) {
                    $data = [
                        'pageTitle' => trans('auth.email_confirmation'),
                        'username' => !empty($verification->mobile) ? 'mobile' : 'email',
                        'usernameValue' => !empty($verification->mobile) ? $verification->mobile : $verification->email,
                    ];

                    return view('web.default.auth.verification', $data);
                }
            }
        }

        return redirect('/login');
    }

    public function resendCode()
    {
        $verificationId = session()->get('verificationId', null);

        if (!empty($verificationId)) {
            $verification = Verification::where('id', $verificationId)
                ->whereNull('verified_at')
                ->where('expired_at', '>', time())
                ->first();
            if (!empty($verification)) {
                $user = User::where('id', $verification['user_id'])->first();
                $dataSendBot = [
                    'mobile' => $user->mobile,
                    'message' => "A paz do Senhor, " . $user->full_name . "!\n\nEstamos felizes e gratos por você ter escolhido nossa plataforma!\nPara confirmar seu cadastro no _*Servus EaD*_, digite o seguinte código de verificação abaixo:\n" . $verification['code'] . "\nVocê também pode obtê-lo no seu endereço de email cadastrado: " . $user->email . ".\n\n\n\nDesejamos um excelente estudo das Sagradas Escrituras!"
                ];
                $botLothus = new SendMessege();
                $botLothus->api_sendZap($dataSendBot);
                $verification->sendEmailCode();

                return redirect('/verification');
            }
        }

        return redirect('/login');
    }

    public function checkConfirmed($user = null, $username, $value)
    {
        if (!empty($value)) {
            $verification = Verification::where($username, $value)
                ->where('expired_at', '>', time())
                ->where(function ($query) {
                    $query->whereNull('user_id')
                        ->orWhereHas('user');
                })
                ->first();

            $data = [];
            $time = time();

            if (!empty($verification)) {
                if (!empty($verification->verified_at)) {
                    return [
                        'status' => 'verified'
                    ];
                } else {
                    $data['created_at'] = $time;
                    $data['expired_at'] = $time + Verification::EXPIRE_TIME;

                    if (time() > $verification->expired_at) {
                        $data['code'] = $this->getNewCode();
                    } else {
                        $data['code'] = $verification->code;
                    }
                }
            } else {
                $data[$username] = $value;
                $data['code'] = $this->getNewCode();
                $data['user_id'] = !empty($user) ? $user->id : (auth()->check() ? auth()->id() : null);
                $data['created_at'] = $time;
                $data['expired_at'] = $time + Verification::EXPIRE_TIME;
            }

            $data['verified_at'] = null;

            $verification = Verification::updateOrCreate([$username => $value], $data);

            session()->put('verificationId', $verification->id);

            $dataSendBot = [
                'mobile' => $user->mobile,
                'message' => "A paz do Senhor, " . $user->full_name . "!\n\nEstamos felizes e gratos por você ter escolhido nossa plataforma!\nPara confirmar seu cadastro no _*Servus EaD*_, digite o seguinte código de verificação abaixo:\n" . $data['code'] . "\nVocê também pode obtê-lo no seu endereço de email cadastrado: " . $user->email . ".\n\n\n\nDesejamos um excelente estudo das Sagradas Escrituras!"
            ];
            $botLothus = new SendMessege();
            $botLothus->api_sendZap($dataSendBot);
            $verification->sendEmailCode();

            return [
                'status' => 'send'
            ];
        }

        abort(404);
    }

    public function confirmCode(Request $request)
    {
        $value = $request->get('username');
        $code = $request->get('code');
        $username = $this->username($value);
        $request[$username] = $value;
        $time = time();
        $user = User::where($username, $value)->first();
        Verification::where($username, $value)
            ->whereNull('verified_at')
            ->where('code', $code)
            ->where('created_at', '>', $time - 24 * 60 * 60)
            ->update([
                'verified_at' => $time,
                'expired_at' => $time + 50,
            ]);

        $rules = [
            'code' => [
                'required',
                Rule::exists('verifications')->where(function ($query) use ($value, $code, $time, $username) {
                    $query->where($username, $value)
                        ->where('code', $code)
                        ->whereNotNull('verified_at')
                        ->where('expired_at', '>', $time);
                }),
            ],
        ];

        if ($username == 'mobile') {
            $rules['mobile'] = 'required';
            $value = ltrim($value, '+');
        } else {
            $rules['email'] = 'required|email';
        }

        $this->validate($request, $rules);

        $authUser = auth()->check() ? auth()->user() : null;

        $referralCode = session()->get('referralCode', null);

        if (empty($authUser)) {
            $authUser = User::where($username, $value)
                ->first();

            $loginController = new LoginController();

            if (!empty($authUser)) {
                if (\Auth::loginUsingId($authUser->id)) {

                    if (!empty($referralCode)) {
                        Affiliate::storeReferral($authUser, $referralCode);
                    }

                    $dataSendBot = [
                        'mobile' => $user->mobile,
                        'message' => "Glória a Deus! 🙌\n" . $user->full_name . ", seu cadastro foi confirmado com sucesso.\nAproveite todos os nossos cursos! Estamos sempre à disposição para lhe ajudar no que você precisar!\n\nAh, e não deixe de olhar nossa loja virtual, aí mesmo na plataforma!\nFique na paz de Cristo."
                    ];
                    $botLothus = new SendMessege();
                    $botLothus->api_sendZap($dataSendBot);

                    return $loginController->afterLogged($request, true);
                }
            }

            return $loginController->sendFailedLoginResponse($request);
        }
    }

    private function username($value)
    {
        $username = 'email';
        $email_regex = "/^[_a-z0-9-]+(\.[_a-z0-9-]+)*@[a-z0-9-]+(\.[a-z0-9-]+)*(\.[a-z]{2,})$/i";

        if (preg_match($email_regex, $value)) {
            $username = 'email';
        } elseif (is_numeric($value)) {
            $username = 'mobile';
        }

        return $username;
    }

    private function getNewCode()
    {
        return rand(10000, 99999);
    }
}
