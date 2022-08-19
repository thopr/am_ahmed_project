<?php
namespace App\Utility;

use App\Models\SmsTemplate;
use App\Models\User;
use PDF;
use Illuminate\Support\Facades\Storage;
use Prgayman\Zatca\Facades\Zatca;

class SmsUtility
{


    
    public static function notify_orders_list($link)
    {


        $phone='966537266754';

        $sms_template   = SmsTemplate::where('identifier','notify_orders_list')->first();
        $sms_body       = $sms_template->sms_body;
        $sms_body       = str_replace('[[link]]', $link, $sms_body);
        





        $template_id    = $sms_template->template_id;
        try {
           return sendSMS( $phone, 'whatsapp', $sms_body, $template_id);
        } catch (\Exception $e) {

        }
    }

    public static function notify_shopping_list($link)
    {


        $phone='966537266754';

        $sms_template   = SmsTemplate::where('identifier','notify_shopping_list')->first();
        $sms_body       = $sms_template->sms_body;
        $sms_body       = str_replace('[[link]]', $link, $sms_body);
        





        $template_id    = $sms_template->template_id;
        try {
           return sendSMS( $phone, 'whatsapp', $sms_body, $template_id);
        } catch (\Exception $e) {

        }
    }

    public static function notify_order_invoice($link)
    {


        $phone='966537266754';

        $sms_template   = SmsTemplate::where('identifier','notify_order_invoice')->first();
        $sms_body       = $sms_template->sms_body;
        $sms_body       = str_replace('[[link]]', $link, $sms_body);
        





        $template_id    = $sms_template->template_id;
        try {
           return sendSMS( $phone, env('APP_NAME'), $sms_body, $template_id);
        } catch (\Exception $e) {

        }
    }

    public static function notify_delivery_person($order)
    {

        $user = User::find($order->user_id);

        $sms_template   = SmsTemplate::where('identifier','notify_delivery_person')->first();
        $sms_body       = $sms_template->sms_body;
        $sms_body       = str_replace('[[code]]', $order->code, $sms_body);
        $sms_body       = str_replace('[[phone]]', $user->phone, $sms_body);
        $sms_body       = str_replace('[[address_link]]', $order->address_link, $sms_body);      





        $template_id    = $sms_template->template_id;
        try {
           return sendSMS($user->phone, 'whatsapp', $sms_body, $template_id);
        } catch (\Exception $e) {

        }
    }

    public static function phone_number_verification($user)
    {
        $sms_template   = SmsTemplate::where('identifier','phone_number_verification')->first();
        $sms_body       = $sms_template->sms_body;
        $sms_body       = str_replace('[[code]]', $user->verification_code, $sms_body);
        $sms_body       = str_replace('[[site_name]]', env('APP_NAME'), $sms_body);
        if($user->device_type == 'ios'){

        }else{
        $sms_body       = $sms_body.' '.' '.'VyhAzVpDUP7';

        }

        $template_id    = $sms_template->template_id;
        try {
           return sendSMS($user->phone, env('APP_NAME'), $sms_body, $template_id);
        } catch (\Exception $e) {

        }
    }

    public static function password_reset($user = '')
    {
        $sms_template   = SmsTemplate::where('identifier','password_reset')->first();
        $sms_body       = $sms_template->sms_body;
        $sms_body       = str_replace('[[code]]', $user->verification_code, $sms_body);
        $template_id    = $sms_template->template_id;
        try {
            sendSMS($user->phone, env('APP_NAME'), $sms_body, $template_id);
        } catch (\Exception $e) {

        }
    }

    public static function order_placement($phone='', $order)
    {



        $tax= $order->orderDetails()->sum('tax');
     



        $qrCode =  Zatca::sellerName('AmAhmed')
                    ->vatRegistrationNumber("310159701900003")
                    
                    ->timestamp($order->created_at)
                    ->totalWithVat($order->grand_total)
                    ->vatTotal($tax)
                    ->toBase64();
                    
                    $data = [
                        'order' =>  $order,
                        'qrCode' =>  $qrCode,
                      ];
                
            
              $pdf = PDF::loadView('pdf.qr_invoice', $data);
        
         
          
              $content = $pdf->Output('', 'S');
            
              Storage::disk('local')->put('pdf/'.$order->code.'_invoice.pdf', $content);
              $link=asset('pdf/'.$order->code.'_invoice.pdf');


        $sms_template   = SmsTemplate::where('identifier','order_placement')->first();
        $sms_body       = $sms_template->sms_body;
        $sms_body       = str_replace('[[order_code]]', $order->code, $sms_body);
        $sms_body       = str_replace('[[link]]', $link, $sms_body);
        $template_id    = $sms_template->template_id;
        try {
            sendSMS($phone, env('APP_NAME'), $sms_body, $template_id);
        } catch (\Exception $e) {

        }
    }

    public static function delivery_status_change($phone='', $order)
    {
        $sms_template   = SmsTemplate::where('identifier','delivery_status_change')->first();
        $sms_body       = $sms_template->sms_body;
        $delivery_status = translate(ucfirst(str_replace('_', ' ', $order->delivery_status)));

        $sms_body       = str_replace('[[delivery_status]]', $delivery_status, $sms_body);
        $sms_body       = str_replace('[[order_code]]', $order->code, $sms_body);
        $template_id    = $sms_template->template_id;


         
        try {
            return   sendSMS($phone, env('APP_NAME'), $sms_body, $template_id);
        } catch (\Exception $e) {

        }
    }

    public static function payment_status_change($phone='', $order='')
    {
        $sms_template   = SmsTemplate::where('identifier','payment_status_change')->first();
        $sms_body       = $sms_template->sms_body;
        $sms_body       = str_replace('[[payment_status]]', $order->payment_status, $sms_body);
        $sms_body       = str_replace('[[order_code]]', $order->code, $sms_body);
        $template_id    = $sms_template->template_id;
        try {
           // sendSMS($phone, env('APP_NAME'), $sms_body, $template_id);
        } catch (\Exception $e) {

        }
    }

    public static function assign_delivery_boy($phone='', $code='')
    {
        $sms_template   = SmsTemplate::where('identifier','assign_delivery_boy')->first();
        $sms_body       = $sms_template->sms_body;
        $sms_body       = str_replace('[[order_code]]', $code, $sms_body);
        $template_id    = $sms_template->template_id;
        try {
          //  sendSMS($phone, env('APP_NAME'), $sms_body, $template_id);
        } catch (\Exception $e) {

        }
    }


}

?>
