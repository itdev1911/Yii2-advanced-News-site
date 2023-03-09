<?php
/** @var yii\web\View $this */
$this->title = 'Тестовая страница';
?>

<?php foreach ($news as $item): ?>

<h4><?= \yii\helpers\Html::a($item->title, '/test/show?id='.$item->id) ?></h4>


<?php endforeach; ?>

