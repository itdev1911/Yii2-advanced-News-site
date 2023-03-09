<?php

use yii\db\Migration;

/**
 * Class m230307_084931_craete_news_table
 */
class m230307_084931_create_news_table extends Migration
{
    /**
     * {@inheritdoc}
     */
    public function safeUp()
    {
        $this->createTable('news', [
            'id' => $this->primaryKey(),
            'title' => $this->string(255),
            'description' => $this->text(),
            'photo' => $this->string(255),
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
        echo "m230307_084931_craete_news_table cannot be reverted.\n";
        $this->dropTable('news');
        return false;
    }

    /*
    // Use up()/down() to run migration code without a transaction.
    public function up()
    {

    }

    public function down()
    {
        echo "m230307_084931_craete_news_table cannot be reverted.\n";

        return false;
    }
    */
}
