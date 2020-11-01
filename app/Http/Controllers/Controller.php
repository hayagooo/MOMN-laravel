<?php

namespace App\Http\Controllers;

use GuzzleHttp\Exception\ClientException;
use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Routing\Controller as BaseController;

class Controller extends BaseController
{
    use AuthorizesRequests, DispatchesJobs, ValidatesRequests;

    public function onSuccess($message, $data)
    {
        if($data != '' || $data != null || $data != []) {
            return response()->json([
                'status' => 'success',
                'message' => $message,
                'data' => $data,
            ]);
        } else {
            return response()->json([
                'status' => 'null',
                'message' => 'Data telah dihapus / tidak ditemukan',
                'data' => $data,
            ]);
        }
    }

    public function exception(\Exception $e)
    {
        if($e instanceof ClientException) {
            $nException = json_decode($e->getResponse()->getBody()->getContents(), true);
            if($nException) {
                $e = new \Exception($nException['reason'], $nException['code']);
            }
        }
        $arr = [
            'status' => 'Failed',
            'error' => $e->getMessage(),
            'code' => $e->getCode()
        ];
        return response()->json($arr);
    }
}
