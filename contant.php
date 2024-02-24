<?php include "header.php"; ?>

	<div class="container">
		<div class="row">
			<div class="col-md-12">
			<form action="?" method="post">
				<div class="form-group">
				<label for="nama">Nama</label>
				<input type="text" class="form-control" name="nama" placeholder="Isikan nama">
				</div>
				<div class="form-group">
				<label for="alamat">Alamat</label>
				<input type="text" class="form-control" name="alamat" placeholder="Isikan Alamat">
				</div>
				<div class="form-group">
				<label for="gmail">penjelasan</label>
				<textarea name="alamat"class="form-control" placeholder="Isikan penjelasan"></textarea>
				</div>
				<button type="submit" class="btn btn-info">KIRIM</button>
				<button type="reset" class="btn btn-info">BATAL</button>
			</form>
			</div>
		</div>
	</div>
<?php include "footer.php";?>