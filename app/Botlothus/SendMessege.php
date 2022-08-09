<?php

namespace App\Botlothus;

use GuzzleHttp\Client;
use GuzzleHttp\Psr7\Request;

class SendMessege
{
    public function api_sendZap($data)
    {        
        try {
            $curl = curl_init();
            curl_setopt_array($curl, array(
                CURLOPT_URL => "http://zap.lothus.app.br/api/v1/academia/msgmassa",
                CURLOPT_RETURNTRANSFER => 1,
                CURLOPT_HTTPHEADER => ['Content-Type: application/json', 'Accept:application/json'],
                CURLOPT_POST => 1,
                CURLOPT_POSTFIELDS => json_encode([
                    "botnumber" => "559830221830@c.us",
                    "batch"     => rand(300, 9999),
                    "destiny"   => $this->numeroAjuste($data['mobile']),
                    "message"   => $data['message'],
                    "priority"  => "5",
                ])
            ));

            $response = curl_exec($curl);
            $err = curl_error($curl);
            curl_close($curl);

            if ($err) {
                $result = null;
            } else {
                $response = json_decode($response, true);
                if (!empty($response)) {
                    $result = $response['message'];
                } else {
                    $result = null;
                }
            }

            return $result;
        } catch (\Exception $e) {
            dd($e);
        }
    }

    public function numeroAjuste($numero)
    {
        $vowels = array("(", ")", " ", "-", "+");
        $numero2 = str_replace($vowels, "", $numero);
        //Se numero tem 12 digitos nao faz nada
        if (strlen($numero2) == 12)
            return "{$numero2}@c.us";

        if (strlen($numero2) == 13) {

            //Pega dddi+ddd e numero
            $ddd = substr($numero2, 0, 4);
            $num = str_replace($ddd, '', $numero2);

            $num = substr($num, 1);

            return "{$ddd}{$num}@c.us";
        }
    }

}
