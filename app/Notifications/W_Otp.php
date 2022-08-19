<?php

namespace App\Notifications;

use App\Channels\Messages\WhatsAppMessage;
use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Notifications\Messages\MailMessage;
use Illuminate\Notifications\Notification;
use App\Channels\WhatsAppChannel;
use App\Models\User;



class W_Otp extends Notification
{
  use Queueable;


  public $user;
  
  public function __construct(User $user)
  {
    $this->user = $user;
  }
  
  public function via($notifiable)
  {
    return [WhatsAppChannel::class];
  }
  
  public function toWhatsApp($notifiable)
  {
    $code = $this->user->verification_code;  
  


    return (new WhatsAppMessage)
        ->content("Your Code is :{$code} ");
  }
}
