<?php

use yii\db\Migration;

/**
 * Class m230307_084949_craete_news_category_table
 */
class m230307_084949_create_news_category_table extends Migration
{
    /**
     * {@inheritdoc}
     */
    public function safeUp()
    {
        $this->createTable('news_category', [
            'id' => $this->primaryKey(),
            'news_id' => $this->integer(11),
            'category_id' => $this->integer(11),
            'isActive' => $this->tinyInteger(1),
            'status' => $this->tinyInteger(2),
            'created_at' => $this->dateTime(),
            'updated_at' => $this->dateTime()
        ]);

        $this->addForeignKey(
            'fk-news-news_id',
            'news_category',
            'news_id',
            'news',
            'id',
            'CASCADE'
        );

        $this->addForeignKey(
            'fk-news-cat_id',
            'news_category',
            'category_id',
            'category',
            'id',
            'CASCADE'
        );

    }

    /**
     * {@inheritdoc}
     */
    public function safeDown()
    {
        echo "m230307_084949_craete_news_category_table cannot be reverted.\n";
        $this->dropTable('news_category');
        return false;
    }

    /*
    // Use up()/down() to run migration code without a transaction.
    public function up()
    {

    }

    public function down()
    {
        echo "m230307_084949_craete_news_category_table cannot be reverted.\n";

        return false;
    }
    */
}
