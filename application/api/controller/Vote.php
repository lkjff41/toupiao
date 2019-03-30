<?php

namespace app\api\controller;

use think\Controller;
use think\Request;

class Vote extends Controller
{
    /**
     * 显示资源列表
     *
     * @return \think\Response
     */
    public function postVote()
    {
        $a = input('post.');
        dump($a);die;
    }

}
