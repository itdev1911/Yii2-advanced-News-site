<?php

namespace frontend\models;

use common\models\Followers;
use Yii;
use yii\base\Model;

/**
 * ContactForm is the model behind the contact form.
 */
class FollowForm extends Followers
{

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['fio', 'email', 'phone', 'comment'], 'required'],
            ['email', 'email'],
        ];
    }

}
