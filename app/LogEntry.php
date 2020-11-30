<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class LogEntry extends Model {
    protected $fillable = ['REQUEST_START_TIME','URL','METHOD','REQUEST_HEADER','REQUEST_BODY','RESPONSE'];
}
