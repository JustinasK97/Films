<h2>Visi filmai</h2>
<?php
$dsn= "mysql:host=$host; dbname=$db";
try{
    $conn = new PDO ($dsn, $username, $password,$options);
    if ($conn){

        $stmt = $conn->query("SELECT filmai.id, filmai.pavadinimas, filmai.aprasymas,
        filmai.metai, filmai.imdb, filmai.zanrai, filmai.rezisierius, zanrai.pavadinimas As zanro_pavadinimas
        FROM filmai
        INNER JOIN zanrai ON filmai.zanrai=zanrai.id");
        $filmai = $stmt->fetchAll();
    }
}catch (PDOException $e){

    echo $e->getMessage();
}?>
<a href="/?page=naujas-filmas" class="btn btn-primary">Naujas Filmas</a>
<table class="table table-bordered">
    <tr>
        <?php
        foreach ($filmai as $column => $filmas):?>
    </tr>
    <tr>
        <td><?=$filmas['id'];?></td>
        <td><?=$filmas['pavadinimas'];?></td>
        <td><?=$filmas['metai'];?></td>
        <td><?=$filmas['rezisierius'];?></td>
        <td><?=$filmas['imdb'];?></td>
        <td><?=$filmas['zanro_pavadinimas'];?></td>
        <td><?=$filmas['aprasymas'];?></td>
        <td><a href="?page=filmo-redagavimas&id=<?=$filmas['id'];?>">Redaguoti</a></td>
        <td><a href="?page=filmo-salinimas&id=<?=$filmas['id'];?>">Šalinti</a></td>
    </tr>
    <?php endforeach;?>
</table>