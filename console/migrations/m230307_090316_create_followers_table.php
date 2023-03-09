<?php

use yii\db\Migration;

/**
 * Class m230307_090316_craete_followers_table
 */
class m230307_090316_create_followers_table extends Migration
{
    /**
     * {@inheritdoc}
     */
    public function safeUp()
    {
        $this->createTable('followers', [
            'id' => $this->primaryKey(),
            'fio' => $this->string(255),
            'phone' => $this->string(255),
            'email' => $this->string(255),
            'comment' => $this->text(),
            'isActive' => $this->tinyInteger(1),
            'status' => $this->tinyInteger(1),
            'created_at' => $this->dateTime(),
            'updated_at' => $this->dateTime()
        ]);
    }

    /**
     * {@inheritdoc}
     */
    public function safeDown()
    {
        echo "m230307_090316_craete_followers_table cannot be reverted.\n";
        $this->dropTable('followers');
        return false;
    }

    /*
    // Use up()/down() to run migration code without a transaction.
    public function up()
    {

    }

    public function down()
    {
        echo "m230307_090316_craete_followers_table cannot be reverted.\n";

        return false;
    }
    */
}
