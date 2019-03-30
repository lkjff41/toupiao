<?php
/**
 * Created by PhpStorm.
 * User: hedongjian
 * Date: 19-3-30
 * Time: 下午8:16
 */
namespace app\admin\validate;


use think\Validate;

class Vote extends Validate
{
    protected $rule = [
        'vname'=>'require|max:50|unique:vote',
        'desciption'=>'require|max:500',

    ];


}