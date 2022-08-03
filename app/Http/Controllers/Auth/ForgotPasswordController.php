<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use Carbon\Carbon;
use Illuminate\Foundation\Auth\SendsPasswordResetEmails;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Mail;
use App\Botlothus\SendMessege;
use App\User;

class ForgotPasswordController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Password Reset Controller
    |--------------------------------------------------------------------------
    |
    | This controller is responsible for handling password reset emails and
    | includes a trait which assists in sending these notifications from
    | your application to your users. Feel free to explore this trait.
    |
    */

    use SendsPasswordResetEmails;

    public function showLinkRequestForm()
    {
        return view(getTemplate() . '.auth.forgot_password');
    }

    public function forgot(Request $request)
    {
        $request->validate([
            'email' => 'required|email|exists:users',
        ]);

        $token = \Illuminate\Support\Str::random(60);
        DB::table('password_resets')->insert([
            'email' => $request->input('email'),
            'token' => $token,
            'created_at' => Carbon::now()
        ]);

        $generalSettings = getGeneralSettings();
        $emailData = [
            'token' => $token,
            'generalSettings' => $generalSettings,
            'email' => $request->input('email')
        ];

        $user = User::where('email', $request->input('email'))->first();
        $dataSendBot = [
            'mobile' => $user->mobile,
            'message' => "_*SERVUS EAD*_\n\nA paz do Senhor Jesus Cristo!\n_Solicitação de Redefinição de Senha_\n\nLink de confirmação: 👇\nead.servus.org.br/reset-password/" .$token. "?email=". $user->email ."\n\n‼️ Caso não tenha sido você quem solicitou, *sua conta pode estar em perigo*. Faça login e altere sua senha. Se não conseguir, entre em contato com conosco por meio deste número mesmo, basta solicitar um atendimento. Estamos sempre à disposição para lhe ajudar no que você precisar!\n\nFique na paz de Cristo."
        ];
        $botLothus = new SendMessege();
        $botLothus->api_sendZap($dataSendBot);

        Mail::send('web.default.auth.password_verify', $emailData, function ($message) use ($request) {
            $message->from(!empty($generalSettings['site_email']) ? $generalSettings['site_email'] : env('MAIL_FROM_ADDRESS'), env('MAIL_FROM_NAME'));
            $message->to($request->input('email'));
            $message->subject('Solicitação de Redefinição de Senha');
        });

        $toastData = [
            'title' => trans('public.request_success'),
            'msg' => trans('auth.send_email_for_reset_password'),
            'status' => 'success'
        ];
        return back()->with(['toast' => $toastData]);
    }
}
