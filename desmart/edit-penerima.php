<?php

include 'koneksi.php';
$id = $_GET['edit'];
$sql = "SELECT * FROM `penerima` WHERE id_penerima = $id";
$result = mysqli_query($mysqli, $sql);
$row = mysqli_fetch_assoc($result);
$nik = $row['nik'];
$nama = $row['nama'];
$password = $row['password'];
$tgl_lahir = $row['tgl_lahir'];
$pekerjaan = $row['pekerjaan'];
$id_admin = $row['id_admin'];

if (isset($_POST['submit'])) {
    $nik = $_POST['nik'];
    $nama = $_POST['nama'];
    $password = $_POST['password'];
    $tgl_lahir = $_POST['tgl_lahir'];
    $pekerjaan = $_POST['pekerjaan'];
    $id_admin = $_POST['id_admin'];

    $sql = "UPDATE `penerima` SET id_penerima='$id',nik='$nik',nama='$nama',password='$password',tgl_lahir='$tgl_lahir',pekerjaan='$pekerjaan',id_admin='$id_admin' WHERE id_penerima='$id'";
    $result = mysqli_query($mysqli, $sql);
    if ($result) {
        header("location:penerima.php");

    } else {
        die(mysqli_error($mysqli));

    }
}
    ?>
<html>
    <head>
    <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/edit-penerima.css">
        <title>DeSmart - edit penerima</title>
    </head>
    <body>
    <div class="wrapper">
            <div class="logo">
                <img src="img/rmh.svg" alt="logo">
            </div>
    <form action="" method="post">
        <table width="250%" border="0">
            <tr>
                <td>NIK : </td>
                <td><input type="number" name="nik" value=<?php echo $nik; ?>>
                </td>
            </tr>
            <tr>
                <td>Nama : </td>
                <td><input type="text" name="nama" value=<?php echo $nama; ?>>
                </td>
            </tr>
            <tr>
                <td>Password :</td>
                <td><input type="number" name="pass" value=<?php echo $password; ?>>
            </tr>
            <tr>
                <td>Tanggal Lahir : </td>
                <td><input type="date" name="tgl_lahir" value=<?php echo $tgl_lahir; ?>>
                </td>
            </tr>
            <tr>
                <td>Pekerjaan : </td>
                <td><input type="text" name="pekerjaan" value=<?php echo $pekerjaan; ?>>
                </td>
            </tr>
            <tr>
                <td>RW : </td>
                <td><input type="number" name="rw" value=<?php echo $id_admin; ?>>
                </td>
            </tr>
            <tr>
                <td></td>
                <td></td>
                <td><input type="submit" name="submit" value="Kirim"></td>
            </tr>
        </table>
    </form>
</div>
</body>
</html>

