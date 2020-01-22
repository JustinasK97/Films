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
<table class="table table-bordered">
    <tr>
        <?php
        foreach ($filmai as $filmas):?>
    </tr>
    <tr>
        <td><?=$filmas['id'];?></td>
        <td><?=$filmas['Pavadinimas'];?></td>
        <td><?=$filmas['Metai'];?></td>
        <td><?=$filmas['Rezisierius'];?></td>
        <td><?=$filmas['imdb'];?></td>
        <td><?=$filmas['Zanro_id'];?></td>
        <td><?=$filmas['Aprasymas'];?></td>
    </tr>
    <?php endforeach;?>
</table>