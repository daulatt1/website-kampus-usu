<?php
  session_start();
  if (empty($_SESSION['user_id'])){
    header("location:../login.php");
  }
?>
<?php

include "../koneksi.php";

$id=$_POST['dosen_id'];
$nama=$_POST['nama'];
$nidn=$_POST['nidn'];
$jenis_kelamin=$_POST['jenis_kelamin'];
$alamat=$_POST['alamat'];
$telepon=$_POST['telepon'];
$email=$_POST['email'];

$ubah=$koneksi->query("update dosen set nama='$nama', nidn='$nidn', jenis_kelamin='$jenis_kelamin', alamat='$alamat', telepon='$telepon', telepon='$email' where dosen_id='$id'");

if($ubah==true){

    header("location:tampil-dosen.php?pesan=editBerhasil");
} else{
    echo "Error";
}

?>