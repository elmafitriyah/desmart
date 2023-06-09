<?php

session_start();

include "koneksi.php";

@$nama = $_POST['nama'];
@$password = $_POST['password'];

$sql_login = "SELECT * FROM `penerima` WHERE nama = '$nama' AND password = '$password'";
$login = mysqli_query($mysqli, $sql_login);

$data = mysqli_fetch_array($login);

if ($data){ 
    $_SESSION['id_penerima']= $data['id_penerima'];
    $_SESSION['nama'] = $data['nama'];
    $_SESSION['password'] = $data['password'];

    header("location:user.php");
}else{
    echo "<script>
            alert('Cek Kembali Username dan Password Anda');
            document.location = 'user-login.php';
        </script>";
}

?>