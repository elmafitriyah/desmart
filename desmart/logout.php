<?php

session_start();

unset($_SESSION['id_admin']);
unset($_SESSION['username']);
unset($_SESSION['password']);

unset($_SESSION['status_admin']);
session_destroy();

echo "<script>
alert('Logout Successfully');
document.location = 'beranda.php';
</script>";

?>