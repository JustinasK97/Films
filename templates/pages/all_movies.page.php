<h2>Visi filmai</h2>
<?php
$dsn= "mysql:host=$host; dbname=$db";
try{
    $conn = new PDO($dsn, $username, $password);
    if($conn){
        $stmt = $conn->query("SELECT * FROM filmai");
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
        <td><?=$filmas['Pavadinimas'];?></td>
        <td><?=$filmas['Metai'];?></td>
        <td><?=$filmas['Rezisierius'];?></td>
        <td><?=$filmas['imdb'];?></td>
        <td><?=$filmas['zanrai'];?></td>
        <td><?=$filmas['Aprasymas'];?></td>
        <td><a href="?page=filmo-redagavimas&id=<?=$filmas['id'];?>">Redaguoti</a></td>
        <td><a href="?page=filmo-salinimas&id=<?=$filmas['id'];?>">Šalinti</a></td>
    </tr>
    <?php endforeach;?>
</table>