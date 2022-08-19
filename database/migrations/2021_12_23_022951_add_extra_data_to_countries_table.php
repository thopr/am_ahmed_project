<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddExtraDataToCountriesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('countries', function (Blueprint $table) {
            //
            $table->String('latitude')->nullable();
            $table->String('longitude')->nullable();
            $table->String('summary')->default('')->nullable();
            $table->String('description')->default('')->nullable();
            $table->String('image')->default('')->nullable();
            $table->String('featured')->default(0)->nullable();


        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('countries', function (Blueprint $table) {
            //
            $table->dropColumn('latitude');
            $table->dropColumn('longitude');
            $table->dropColumn('summary');
            $table->dropColumn('description');
            $table->dropColumn('image');
            $table->dropColumn('featured');

        });
    }
}
