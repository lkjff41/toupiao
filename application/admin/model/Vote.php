<?php

namespace app\admin\model;

use think\Model;

class Vote extends Model
{
//    public function option(){
//        return $this->hasManyThrough('options','voteOption','vid','oid','id');
//    }



    public function option(){
        return $this->belongsToMany('options','voteOption','oid','vid');
    }
}
