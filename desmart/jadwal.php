<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/jadwal.css">
    <title>DeSmart - user</title>
</head>
<body>
    <div class="logo">
        <a href="beranda.php"><img src="img/atas.svg" alt="ini logo"></a>
        <a href="logout.php"><img src="img/logout.svg" alt="log" class="log"></a>
    </div>
    <div class="nav">
        <a href="user.php" class="u">Data Penerima</a>
        <a href="jadwal.php" class="r">Riwayat Penerimaan</a>
    </div>
    <table border="1">
    <tr>Tanggal Penerimaan
    <?php
include "koneksi.php";
session_start();
$id = $_SESSION['id_penerima'];
$query_mysql = mysqli_query($mysqli, "SELECT penerima.*,data.tgl_menerima,bansos.jumlah FROM data 
INNER JOIN penerima ON penerima.id_penerima = data.id_penerima
INNER JOIN bansos ON bansos.id_bansos = data.id_bansos WHERE penerima.id_penerima = '$id'");
$nomor = 1;
while($data = mysqli_fetch_array($query_mysql)):
    ?>
        <?php echo '<td>'.$data['tgl_menerima'].'</td>';?>
    <?php endwhile;?>
    </tr>
    <tr> 
    <?php
    $id = $_SESSION['id_penerima'];
$query_mysql = mysqli_query($mysqli, "SELECT penerima.*,data.tgl_menerima,bansos.jumlah FROM data 
INNER JOIN penerima ON penerima.id_penerima = data.id_penerima
INNER JOIN bansos ON bansos.id_bansos = data.id_bansos WHERE penerima.id_penerima = '$id'");
    while($data = mysqli_fetch_array($query_mysql)){
    ?>
        <?php echo '<td>'.$data['jumlah'].'</td>';?>
    <?php } ?>
    </tr>
    </table>
</body>
</html>