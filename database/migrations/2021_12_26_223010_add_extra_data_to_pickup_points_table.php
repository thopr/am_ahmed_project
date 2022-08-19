<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddExtraDataToPickupPointsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('pickup_points', function (Blueprint $table) {
            //
            $table->String('latitude')->nullable();
            $table->String('longitude')->nullable();
            $table->String('country_id')->nullable();
            $table->String('state_id')->nullable();
            $table->String('city_id')->nullable();
            

        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('pickup_points', function (Blueprint $table) {
            //
            $table->dropColumn('latitude');
            $table->dropColumn('longitude');
            $table->dropColumn('country_id');
            $table->dropColumn('state_id');
            $table->dropColumn('city_id');

          
        });
    }
}
