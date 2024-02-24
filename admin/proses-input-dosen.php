<?php
  session_start();
  if (empty($_SESSION['user_id'])){
    header("location:../login.php");
  }
?>
<?php

$nama=$_POST['nama'];
$nidn=$_POST['nidn'];
$jenis_kelamin=$_POST['jenis_kelamin'];
$alamat=$_POST['alamat'];
$telepon=$_POST['telepon'];
$email=$_POST['email'];

include "../koneksi.php";

$simpan=$koneksi->query("insert into dosen(nama,nidn,jenis_kelamin,alamat,telepon,email) 
                        values ('$nama', '$nidn', '$jenis_kelamin', '$alamat', '$telepon', '$email')");

if($simpan==true){

    header("location:tampil-dosen.php?pesan=inputBerhasil");
} else{
    echo "Error";
}

?>