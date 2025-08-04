<?php include_once "db.php";
    // movie:"<?=$Movie->find($_GET['id'])['name']",
    // date:"<?=$_GET['date'];",
    // session:"<?=$_GET['session'];",
    // seats:selectedSeats
$_POST['tickets']=count($_POST['seats']);
$_POST['seats']=serialize($_POST['seats']);
$_POST['no']=date('Ymd');
$maxNo=$Order->max('id')+1;
$_POST['no'].=sprintf("%04d",$maxNo);

$Order->save($_POST);
echo $_POST['no'];
?>