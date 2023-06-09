
<?php
    include("koneksi.php");
    $query_mysql = mysqli_query($mysqli,"SELECT DISTINCT data.*,penerima.* FROM data INNER JOIN penerima ON penerima.id_penerima = data.id_penerima;")or die(mysqli_error($mysqli));
    $nomor = 1;
    $data=mysqli_fetch_array($query_mysql);
?>
<html>
    <head>
    <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/add-laporan.css">
        <title>DeSmart - add bansos</title>
    </head>
    <body>
        <div class="wrapper">
        <div class="logo">
                <img src="img/rmh.svg" alt="logo">
            </div>
        <form action=" " method="POST" enctype="multipart/form-data" name="laporan">
        <h3>Add Data Laporan</h3>
            <table>
                <tr>
                    <td width = "130">ID</td>
                    <td>:</td>
                    <td><select name="nama" id="">
                        <?php
                        $sql=mysqli_query($mysqli,"SELECT * FROM penerima");
                        while($data=mysqli_fetch_array($sql)){
                            echo '<option value='.$data['id_penerima'].'>'.$data['nama'].'</option>';
                        }
                        ?>
                    </select>
                    </td>
                </tr>
                <tr>
                    <td width = "130">Tanggal Menerima</td>
                    <td>:</td>
                    <td><input type="date" name="tgl_menerima" required autocomplete="off"></td>
                </tr>
                <tr>
                    <td width="130">RW</td>
                    <td>:</td>
                    <td>
                        <select name="rw" id="">
                            <?php
                            $sql=mysqli_query($mysqli,"SELECT * FROM admin");
                            while($data=mysqli_fetch_array($sql)){
                            echo '<option value='.$data['id_admin'].'>'.$data['id_admin'].'</option>';
                            }
                            ?>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>Bansos</td>
                    <td>:</td>
                    <td>
                    <select name="bansos" id="">
                            <?php
                            $sql=mysqli_query($mysqli,"SELECT * FROM bansos");
                            while($data=mysqli_fetch_array($sql)){
                            echo '<option value='.$data['id_bansos'].'>'.$data['id_bansos'].'</option>';
                            }
                            ?>
                        </select>
                    </td>
                </tr>
                </div>
                <tr>
                    <td></td>
                    <td><input type="submit" value="tambahkan data" name="proses"></td>
                </tr>
                
            </div>
            <?php
            include("koneksi.php");
                if(isset($_POST['proses'])){
                    $id_penerima = $_POST['nama'];
                    $tgl_menerima = $_POST['tgl_menerima'];
                    $id_admin = $_POST['rw'];
                    $id_bansos = $_POST['bansos'];

                    $result = "INSERT INTO data(id_penerima,tgl_menerima,id_admin,id_bansos) values
                    ('$id_penerima','$tgl_menerima','$id_admin','$id_bansos')";
                    
                    $ayam = mysqli_query($mysqli,$result);
                    if(!$ayam){die(mysqli_error($mysqli));}

                    header("location:laporan.php"); 
             }?>
            </table>
        </form>
    </body>
</html>