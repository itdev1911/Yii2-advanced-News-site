<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "followers".
 *
 * @property int $id
 * @property string|null $fio
 * @property string|null $phone
 * @property string|null $email
 * @property string|null $comment
 * @property int|null $isActive
 * @property int|null $status
 * @property string|null $created_at
 * @property string|null $updated_at
 */
class Followers extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'followers';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['comment'], 'string'],
            [['isActive', 'status'], 'integer'],
            [['created_at', 'updated_at'], 'safe'],
            [['fio', 'phone', 'email'], 'string', 'max' => 255],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'fio' => 'ФИО',
            'phone' => 'Телефон',
            'email' => 'Email',
            'comment' => 'Комментарий',
            'isActive' => 'Активный',
            'status' => 'Статус',
            'created_at' => 'Время добавления',
            'updated_at' => 'Время обновления',
        ];
    }
}
