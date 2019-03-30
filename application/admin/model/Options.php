<?php

namespace app\admin\model;

use think\Model;

class Options extends Model
{
    protected $hidden = ['create_time','update_time','pivot'];
}
