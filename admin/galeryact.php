<?php
include('includes/config.php');
error_reporting(0);
$imgpage=$_FILES["imgpage"]["name"];

move_uploaded_file($_FILES["imgpage"]["tmp_name"],"img/vehicleimages/".$_FILES["imgpage"]["name"]);

$sql 	= "INSERT INTO galeri (imgpage) VALUES ('$imgpage')";
$query 	= mysqli_query($koneksidb,$sql);
if($query){
	echo "<script type='text/javascript'>
			alert('Berhasil tambah data.'); 
			document.location = 'galery.php'; 
		</script>";
}else {
			echo "No Error : ".mysqli_errno($koneksidb);
			echo "<br/>";
			echo "Pesan Error : ".mysqli_error($koneksidb);

	echo "<script type='text/javascript'>
			alert('Terjadi kesalahan, silahkan coba lagi!.'); 
			document.location = 'galerytambah.php'; 
		</script>";
}

?>