<?php

use yii\db\Migration;

/**
 * Class m230307_084920_craete_category_table
 */
class m230307_084920_create_category_table extends Migration
{
    /**
     * {@inheritdoc}
     */
    public function safeUp()
    {
        $this->createTable('category', [
            'id' => $this->primaryKey(),
            'name' => $this->string(255),
            'isActive' => $this->tinyInteger(1),
            'status' => $this->tinyInteger(2),
            'created_at' => $this->dateTime(),
            'updated_at' => $this->dateTime()
        ]);
    }

    /**
     * {@inheritdoc}
     */
    public function safeDown()
    {
        echo "m230307_084920_craete_category_table cannot be reverted.\n";

        return false;
    }

    /*
    // Use up()/down() to run migration code without a transaction.
    public function up()
    {

    }

    public function down()
    {
        echo "m230307_084920_craete_category_table cannot be reverted.\n";

        return false;
    }
    */
}
