<?php
  session_start();
  if (empty($_SESSION['user_id'])){
    header("location:../login.php");
  }
?>
<?php

include "../koneksi.php";

$id=$_POST['mahasiswa_id'];
$nama=$_POST['nama'];
$nim=$_POST['nim'];
$jenis_kelamin=$_POST['jenis_kelamin'];
$alamat=$_POST['alamat'];
$tanggal_lahir=$_POST['tanggal_lahir'];

$ubah=$koneksi->query("update mahasiswa set nama='$nama', nim='$nim', jenis_kelamin='$jenis_kelamin', alamat='$alamat', tanggal_lahir='$tanggal_lahir' where mahasiswa_id='$id'");

if($ubah==true){

    header("location:tampil-mahasiswa.php?pesan=editBerhasil");
} else{
    echo "Error";
}

?>