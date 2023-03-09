<?php

namespace frontend\controllers;

use common\models\News;

class TestController extends \yii\web\Controller
{
    public function actionIndex()
    {
        $news = News::find()->where(['isActive' => 1])->all();

        return $this->render('index', [
            'news' => $news
        ]);
    }

    public function actionShow($id){
        $news = News::find()->where(['id' => $id, 'isActive' => 1])->one();

        return $this->render('show', [
            'news' => $news
        ]);
    }

}
