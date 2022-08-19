<?php

namespace App\Http\Controllers\Api\V2;
use Illuminate\Support\Facades\Storage;

use Illuminate\Http\Request;

class PaymentController extends Controller
{
    public function cashOnDelivery(Request $request)
    {
       // Storage::disk('local')->put('request3.txt', $request);
        $order = new OrderController;
        return $order->store($request);
    }

    public function manualPayment(Request $request)
    {
        $order = new OrderController;
        return $order->store($request);
    }
}
