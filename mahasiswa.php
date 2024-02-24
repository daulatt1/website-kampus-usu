<?php include "header.php"; ?>
		
		<!-- Awal Page -->
		<div class="container">
		<!-- Awal baris -->
		<div class="row">
			<div class="col-md-8"><!-- Awal Kolom Pertama -->
			<div class="panel panel-default">
				<div class="panel-body">
				<h2 style="text-muted"><span class="glyphicon glyphicon-list"></span> Data Mahasiswa</h2>
					<table class="table table-bordered table-hover" id="data-table">
						<thead>
						<tr>
							<th>Nama Lengkap</th>
							<th>NIM</th>
							<th>Jenis Kelamin</th>
							<th>Alamat</th>
							<th>Tanggal Lahir</th>
						</tr>
						</thead>
						<?php

						include "koneksi.php";
						$sql=$koneksi->query("select * from mahasiswa order by nim ASC");

						while($row= $sql->fetch_assoc()){
						?>
						<tr>
							<td><?php echo $row['nama']?></td>
							<td><?php echo $row['nim']?></td>
							<td><?php echo $row['jenis_kelamin']?></td>
							<td><?php echo $row['alamat']?></td>
							<td><?php echo $row['tanggal_lahir']?></td>
						</tr>
						<?php } ?>
						</table>
				</div>
      </div>
			</div><!-- Akhir Kolom Pertama -->
			
		<div class="col-md-4"><!-- Awal kolom kedua -->
    <div class="panel panel-default">
        <div class="panel-body">
            <h2 style="text-muted"><span class="glyphicon glyphicon-tasks"></span>Info Lainnya</h2>
            <h4>Workshop Pemasaran Digital</h4>
            <img src="picture/th.jpg" class="img-thumbnail img-responsive">
            <p>Workshop Pemasaran Digital yang diselenggarakan oleh Universitas Sumatera Utara membahas strategi pemanfaatan media sosial sebagai sarana pemasaran produk. Materi akan disampaikan oleh <b>Chris Benoit</b>, pakar sosial media terkemuka. Acara akan dilaksanakan pada tanggal 3 Maret 2017. Untuk informasi lebih lanjut mengenai biaya dan lokasi pelaksanaan, silakan klik link di bawah ini:<br/><a class="btn btn-danger btn-xs" href="ruang_kelas.html"role="button">Info Workshop</a></p>
        </div>
    </div>
</div><!-- Akhir Kolom Kedua -->
		</div><!-- Akhir Baris -->
		</div><!--  Akhir Page -->
		<?php include "footer.php";?>