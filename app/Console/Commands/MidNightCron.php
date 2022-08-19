<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use App\Http\Controllers\OrderController;

class MidNightCron extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'midnight:cron';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'midnight cron command';

    /**
     * Create a new command instance.
     *
     * @return void
     */
    public function __construct()
    {
        parent::__construct();
    }

    /**
     * Execute the console command.
     *
     * @return int
     */
    public function handle()
    {

        (new OrderController)->orders_list();  
        $this->info('Midnight Cron has been exuted successfully');
      
    }
}
