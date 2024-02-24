<?php
  session_start();
  if (empty($_SESSION['user_id'])){
    header("location:../login.php");
  }
?>
<?php

$nama=$_POST['nama'];
$nim=$_POST['nim'];
$jenis_kelamin=$_POST['jenis_kelamin'];
$alamat=$_POST['alamat'];
$tanggal_lahir=$_POST['tanggal_lahir'];

include "../koneksi.php";

$simpan=$koneksi->query("insert into mahasiswa(nama,nim,jenis_kelamin,alamat,tanggal_lahir) 
                        values ('$nama', '$nim', '$jenis_kelamin', '$alamat', '$tanggal_lahir')");

if($simpan==true){

    header("location:tampil-mahasiswa.php?pesan=inputBerhasil");
} else{
    echo "Error";
}

?>