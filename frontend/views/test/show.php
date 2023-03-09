<?php
/** @var yii\web\View $this */
$this->title = (!empty($news->title)) ? $news->title : 'TEST';
?>

<?php if (!empty($news)): ?>
    <h2><?= $news->title ?></h2>
    <br>
    <?= $news->description ?>
<?php endif; ?>

