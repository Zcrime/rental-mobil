<?php
session_start();
error_reporting(0);
include('includes/config.php');
if(strlen($_SESSION['alogin'])==0)
	{	
header('location:index.php');
}
else{
if(isset($_REQUEST['eid']))
	{
$eid=intval($_GET['eid']);
$status=1;
$sql = "UPDATE contactus SET status='$status' WHERE  id_cu='$eid'";
$query = mysqli_query($koneksidb,$sql);
$msg="Pesan sudah dibaca.";
}

 ?>

<!doctype html>
<html lang="en" class="no-js">

<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">
	<meta name="description" content="">
	<meta name="author" content="">
	<meta name="theme-color" content="#3e454c">
	
	<title>Nava Rent Car</title>
	<link rel="shortcut icon" href="img/logo.png">
	<!-- Font awesome -->
	<link rel="stylesheet" href="css/font-awesome.min.css">
	<!-- Sandstone Bootstrap CSS -->
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<!-- Bootstrap Datatables -->
	<link rel="stylesheet" href="css/dataTables.bootstrap.min.css">
	<!-- Bootstrap social button library -->
	<link rel="stylesheet" href="css/bootstrap-social.css">
	<!-- Bootstrap select -->
	<link rel="stylesheet" href="css/bootstrap-select.css">
	<!-- Bootstrap file input -->
	<link rel="stylesheet" href="css/fileinput.min.css">
	<!-- Awesome Bootstrap checkbox -->
	<link rel="stylesheet" href="css/awesome-bootstrap-checkbox.css">
	<!-- Admin Stye -->
	<link rel="stylesheet" href="css/style.css">
  <style>
		.errorWrap {
    padding: 10px;
    margin: 0 0 20px 0;
    background: #fff;
    border-left: 4px solid #dd3d36;
    -webkit-box-shadow: 0 1px 1px 0 rgba(0,0,0,.1);
    box-shadow: 0 1px 1px 0 rgba(0,0,0,.1);
}
.succWrap{
    padding: 10px;
    margin: 0 0 20px 0;
    background: #fff;
    border-left: 4px solid #5cb85c;
    -webkit-box-shadow: 0 1px 1px 0 rgba(0,0,0,.1);
    box-shadow: 0 1px 1px 0 rgba(0,0,0,.1);
}
		</style>

</head>

<body>
	<?php include('includes/header.php');?>

	<div class="ts-main-content">
		<?php include('includes/leftbar.php');?>
		<div class="content-wrapper">
			<div class="container-fluid">

				<div class="row">
					<div class="col-md-12">

						<h2 class="page-title">Pesanan</h2>

						<!-- Zero Configuration Table -->
						<div class="panel panel-default">
							<div class="panel-heading">Pesanan</div>
							<div class="panel-body">
							<?php if($error){?><div class="errorWrap"><strong>ERROR</strong>:<?php echo htmlentities($error); ?> </div><?php } 
				else if($msg){?><div class="succWrap"><strong>SUCCESS</strong>:<?php echo htmlentities($msg); ?> </div><?php }?>
								<table id="zctb" class="display table table-striped table-bordered table-hover" cellspacing="0" width="100%">
									<thead>
										<tr>
											<th>No</th>
											<th>Nama</th>
											<th>Alamat</th>
											<th>Telp</th>
											<th>Telp Darurat</th>
                                            <th>Social Media</th>
                                            <th>Tujuan</th>
                                            <th>KK</th>
                                            <th>KTP</th>
                                            <th>SIM</th>
											<th>Tgl. Posting</th>
											<th>Action</th>
										</tr>
									</thead>
									<tbody>

<?php 
$sql = "SELECT * from contactus";
$query = mysqli_query($koneksidb,$sql);
$no=0;
while($result=mysqli_fetch_array($query))
{	$no++;
	?>	
										<tr>
											<td><?php echo $no;?></td>
											<td><?php echo htmlentities($result['nama_visit']);?></td>
											<td><?php echo htmlentities($result['alamat']);?></td>
											<td><?php echo htmlentities($result['telp_visit']);?></td>
											<td><?php echo htmlentities($result['tlp_darurat']);?></td>
                                            <td><?php echo htmlentities($result['social_media']);?></td>
                                            <td><?php echo htmlentities($result['tujuan']);?></td>
                                            <td><a href="../admin/img/vehicleimages/<?php echo htmlentities($result['kk']);?>" target="blank"><img              src="../admin/img/vehicleimages/<?php echo htmlentities($result['kk']);?>" width="40" height="30"></a></td>
                                            <td><a href="../admin/img/vehicleimages/<?php echo htmlentities($result['ktp']);?>" target="blank"><img              src="../admin/img/vehicleimages/<?php echo htmlentities($result['ktp']);?>" width="40" height="30"></a></td>
                                            <td><a href="../admin/img/vehicleimages/<?php echo htmlentities($result['sim']);?>" target="blank"><img src="../admin/img/vehicleimages/<?php echo htmlentities($result['sim']);?>" width="40" height="30"></a></td>
											<td><?php echo htmlentities($result['tgl_posting']);?></td>
                                            <td class="text-center"><a href="managedel.php?id=<?php echo $result['id_cu'];?>" onclick="return confirm('Apakah anda akan menghapus                                     <?php echo $result['nama_visit'];?>?');"><i class="fa fa-close"></i></a></td>
										</tr>
								<?php } ?>		
									</tbody>
								</table>

						

							</div>
						</div>

					

					</div>
				</div>

			</div>
		</div>
	</div>

	<!-- Loading Scripts -->
	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap-select.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.dataTables.min.js"></script>
	<script src="js/dataTables.bootstrap.min.js"></script>
	<script src="js/Chart.min.js"></script>
	<script src="js/fileinput.js"></script>
	<script src="js/chartData.js"></script>
	<script src="js/main.js"></script>
</body>
</html>
<?php } ?>
