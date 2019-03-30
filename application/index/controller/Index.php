<?php
namespace app\index\controller;

use think\Collection;
use think\Controller;
use app\admin\model\Vote as VoteModel;
use app\admin\model\Options as OptionsModel;

class Index extends Controller
{
    public function index()
    {
        $a = VoteModel::all();
//        dump($a->toArray());
        $this->assign('data',$a);
        return $this->fetch();
    }

    public function vote($id){
        $a = VoteModel::with(['option'])->find($id)->toArray();
        static $option = [];
        foreach ($a['option'] as $k=>$v){
            $option[] = $v;
        }
        if (request()->isPost()){
            $info = input('post.');
            db('options')->where('id',$info['option'])->setInc('num');
            $this->redirect('index/successvote',['id'=>$a['id']]);

        }
        $this->assign([
           'title'=>$a,
            'option'=>$option,
        ]);
        return $this->fetch();
    }

    public function duovote($id){
        $a = VoteModel::with(['option'])->find($id)->toArray();
        static $option = [];
        foreach ($a['option'] as $k=>$v){
            $option[] = $v;
        }
        if (request()->isPost()){
            $info = input('post.');
//            dump($info);die;
            foreach ($info['option'] as $k=>$v){
                db('options')->where('id',$v)->setInc('num');
            }

            $this->redirect('index/successvote',['id'=>$a['id']]);

        }
        $this->assign([
            'title'=>$a,
            'option'=>$option,
        ]);
        return $this->fetch();
    }

    public function successvote($id){
        $a = VoteModel::with(['option'])->find($id)->toArray();
        static $option = [];
        foreach ($a['option'] as $k=>$v){
            $option[] = $v;
        }
        $this->assign([
            'title'=>$a,
            'option'=>$option,
        ]);
        return $this->fetch();
    }



}
