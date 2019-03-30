<?php

namespace app\admin\controller;

use app\admin\model\voteOption;
use think\Controller;
use think\Request;
use app\admin\validate\Vote;
use app\admin\model\Vote as VoteModel;
use app\admin\model\Options as OptionsModel;
use app\admin\model\voteOption as voteOptionModel;

class Index extends Controller
{
    /**
     * 显示资源列表
     *
     * @return \think\Response
     */
    public function index()
    {


        if (\request()->isPost()){
            $info = input("post.");
//            $selects = implode(",",$info['select']);
//            dump($selects);die;
            if ($info['select_type']===0){
                $info['select_type'] = '0';
            }
            $data = [
                'vname'=>$info['vname'],
                'desciption'=>$info['vname'],
                'select_type'=>$info['select_type'],

            ];
//            dump($info['select']);
            $validate = $this->validate($data,'Vote');
            if(true !== $validate){
                // 验证失败 输出错误信息
                dump($validate);die;
            }
//            主题
            $vote = VoteModel::create($data);
//            选择项
            static $option_array = [];
            static  $option_id = [];
            foreach ($info['select'] as $k=>$v){
                $option_array[] = OptionsModel::create(['option'=>$v])->toArray();
            }
            foreach ($option_array as $k=>$v){
                $option_id[] = $v['id'];
            }
            if ($vote && $option_id){
                $vid = $vote->id;
                foreach ($option_id as $k=>$v){
                    voteOption::create(['vid'=>$vid,'oid'=>$v]);
                }

            }else{
                VoteModel::destroy($vote->id);
                OptionsModel::destroy($option_id);

            }
        }


        return $this->fetch();
    }


}
