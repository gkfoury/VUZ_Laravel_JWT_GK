<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateLogEntriesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('log_entries', function (Blueprint $table) {
            $table->id();
            $table->string('REQUEST_START_TIME');
            $table->text('URL');
            $table->string('METHOD');
            $table->text('REQUEST_HEADER');
            $table->text('REQUEST_BODY');
            $table->text('RESPONSE');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('log_entries');
    }
}
