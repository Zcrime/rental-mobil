<?php
session_start();
error_reporting(0);
include('includes/config.php');
if(isset($_POST['send']))
{
$name=$_POST['fullname'];
$alamat=$_POST['alamat'];
$contactno=$_POST['contactno'];
$tlp_darurat=$_POST['tlp_darurat'];
$social_media=$_POST['social_media'];
$tujuan=$_POST['tujuan'];
$kk=$_FILES["kk"]["name"];
$sim=$_FILES["ktp"]["name"];
$ktp=$_FILES["sim"]["name"];
move_uploaded_file($_FILES["kk"]["tmp_name"],"admin/img/vehicleimages/".$_FILES["kk"]["name"]);
move_uploaded_file($_FILES["ktp"]["tmp_name"],"admin/img/vehicleimages/".$_FILES["ktp"]["name"]);
move_uploaded_file($_FILES["sim"]["tmp_name"],"admin/img/vehicleimages/".$_FILES["sim"]["name"]);
$sql1="INSERT INTO contactus (nama_visit,alamat,telp_visit,tlp_darurat,social_media,tujuan,kk,ktp,sim) VALUES('$name','$alamat','$contactno','$tlp_darurat','$social_media','$tujuan','$kk','$ktp','$sim')";
$lastInsertId = mysqli_query($koneksidb, $sql1);
if($lastInsertId){
	$msg="Pesan Terkirim. Kami akan menghubungi anda secepatnya.";
}else{
	$error="Terjadi Kesalahan! Silahkan coba lagi.";
}
}
?>
<!DOCTYPE HTML>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width,initial-scale=1">
<meta name="keywords" content="">
<meta name="description" content="">
<title>Nava Rent Car</title>
<!--Bootstrap -->
<link rel="stylesheet" href="assets/css/bootstrap.min.css" type="text/css">
<!--Custome Style -->
<link rel="stylesheet" href="assets/css/style.css" type="text/css">
<!--OWL Carousel slider-->
<link rel="stylesheet" href="assets/css/owl.carousel.css" type="text/css">
<link rel="stylesheet" href="assets/css/owl.transitions.css" type="text/css">
<!--slick-slider -->
<link href="assets/css/slick.css" rel="stylesheet">
<!--bootstrap-slider -->
<link href="assets/css/bootstrap-slider.min.css" rel="stylesheet">
<!--FontAwesome Font Style -->
<link href="assets/css/font-awesome.min.css" rel="stylesheet">      
<!-- Fav and touch icons -->
<link rel="apple-touch-icon-precomposed" sizes="144x144" href="assets/images/favicon-icon/apple-touch-icon-144-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="114x114" href="assets/images/favicon-icon/apple-touch-icon-114-precomposed.html">
<link rel="apple-touch-icon-precomposed" sizes="72x72" href="assets/images/favicon-icon/apple-touch-icon-72-precomposed.png">
<link rel="apple-touch-icon-precomposed" href="assets/images/favicon-icon/apple-touch-icon-57-precomposed.png">
		<link rel="shortcut icon" href="assets/images/logo.png">
<link href="https://fonts.googleapis.com/css?family=Lato:300,400,700,900" rel="stylesheet">
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

<!-- Start Switcher -->
<?php include('includes/colorswitcher.php');?>
<!-- /Switcher -->  
        
<!--Header-->
<?php include('includes/header.php');?>
<!-- /Header --> 

<!--Page Header-->
<section class="page-header contactus_page">
  <div class="container">
    <div class="page-header_wrap">
      <div class="page-heading">
        <h1>Hubungi Kami</h1>
      </div>
      <ul class="coustom-breadcrumb">
        <li><a href="#">Home</a></li>
        <li>Hubungi Kami</li>
      </ul>
    </div>
  </div>
  <!-- Dark Overlay-->
  <div class="dark-overlay"></div>
</section>
<!-- /Page Header--> 

<!--Contact-us-->
<section class="contact_us section-padding">
  <div class="container">
    <div  class="row">
      <div class="col-md-6">
        <h3>Pemesanan</h3>
          <?php if($error){?><div class="errorWrap"><strong>ERROR</strong>:<?php echo htmlentities($error); ?> </div><?php } 
        else if($msg){?><div class="succWrap"><strong>SUCCESS</strong>:<?php echo htmlentities($msg); ?> </div><?php }?>
        <div class="contact_form gray-bg">
         <div class="row">
						<div class="col-md-12">
							<div class="panel panel-default">
									<div class="panel-heading">Form Pesan</div>
								<div class="panel-body">
									<form method="post" name="theform" action="contact-us.php" class="form-horizontal" onsubmit="return valid(this);" enctype="multipart/form-data">
									<div class="form-group">
										<label class="col-sm-2 control-label">Nama<span style="color:red">*</span></label>
										<div class="col-sm-4">
											<input type="text" name="fullname" class="form-control" required>
										</div>	
                                        <label class="col-sm-2 control-label">No Telp<span style="color:red">*</span></label>
										<div class="col-sm-4">
											<input type="text" name="contactno" class="form-control" required>
										</div>		
									</div>
																				
									<div class="hr-dashed"></div>
									<div class="form-group">
										<label class="col-sm-2 control-label">Alamat Lengkap<span style="color:red">*</span></label>
										<div class="col-sm-4">
											<textarea class="form-control" name="alamat" rows="3" required></textarea>
										</div>
										<label class="col-sm-2 control-label">No Telp Darurat<span style="color:red">*</span></label>
										<div class="col-sm-4">
											<input type="text" name="tlp_darurat" class="form-control" required>
										</div>
									</div>
                                    <div class="form-group">
										<label class="col-sm-2 control-label">Social Media<span style="color:red">*</span></label>
										<div class="col-sm-4"><a>Ketik (-) Jika kosong</a>
											<input type="text" name="social_media" class="form-control" required>
										</div>	
                                        <label class="col-sm-2 control-label">Tujuan<span style="color:red">*</span></label>
										<div class="col-sm-4">
											<input type="text" name="tujuan" class="form-control" required>
										</div>		
									</div>

									<div class="hr-dashed"></div>
									<div class="form-group">
										<div class="col-sm-12">
											<h4><b>Upload Gambar</b></h4>
										</div>
									</div>

									<div class="form-group">
										<div class="col-sm-4">
											KK<span style="color:red">*</span><input type="file" name="kk" accept="kk/*" required>
										</div>
										<div class="col-sm-4">
											KTP<span style="color:red">*</span><input type="file" name="ktp" accept="ktp/*" required>
										</div>
										<div class="col-sm-4">
											SIM<span style="color:red">*</span><input type="file" name="sim" accept="sim/*" required>
										</div>
									</div>
									<div class="hr-dashed"></div>									
								</div>
							</div>
						</div>
					</div>

            <div class="form-group">
              <button class="btn" type="submit" name="send" type="submit">Send Message <span class="angle_arrow"><i class="fa fa-angle-right" aria-hidden="true"></i></span></button>
            </div>
          </form>
        </div>
      </div>


      <div class="col-md-6">
        <h3>Info Kontak</h3>
        <div class="contact_detail">
<?php 
$pagetype=$_GET['type'];
$sql1 = "SELECT * from contactusinfo";
$query1 = mysqli_query($koneksidb,$sql1);
if(mysqli_num_rows($query1)>0)
{
while($result = mysqli_fetch_array($query1))
{
?>
          <ul>
            <li>
              <div class="icon_wrap"><i class="fa fa-envelope-o" aria-hidden="true"></i></div>
              <div class="contact_info_m"><a href=""><?php   echo htmlentities($result['email_kami']); ?></a></div>
            </li>

            <li>
              <div class="icon_wrap"><i class="fa fa-phone" aria-hidden="true"></i></div>
              <div class="contact_info_m"><a href=""><?php   echo htmlentities($result['telp_kami']); ?></a></div>
            </li>

            <li>
              <div class="icon_wrap"><i class="fa fa-map-marker" aria-hidden="true"></i></div>
              <div class="contact_info_m"><a href="https://goo.gl/maps/nfTdTNVzSHCMMyjF8"><?php   echo htmlentities($result['alamat_kami']); ?></div>
            </li>
          </ul>
        <?php }} ?>
        </div>
      </div>
    </div>
  </div>
</section>
<!-- /Contact-us--> 


<!--Footer -->
<?php include('includes/footer.php');?>
<!-- /Footer--> 

<!--Back to top-->
<div id="back-top" class="back-top"> <a href="#top"><i class="fa fa-angle-up" aria-hidden="true"></i> </a> </div>
<!--/Back to top--> 

<!-- Scripts --> 
<script src="assets/js/jquery.min.js"></script>
<script src="assets/js/bootstrap.min.js"></script> 
<script src="assets/js/interface.js"></script> 
<!--Switcher-->
<script src="assets/switcher/js/switcher.js"></script>
<!--bootstrap-slider-JS--> 
<script src="assets/js/bootstrap-slider.min.js"></script> 
<!--Slider-JS--> 
<script src="assets/js/slick.min.js"></script> 
<script src="assets/js/owl.carousel.min.js"></script>

</body>

<!-- Mirrored from themes.webmasterdriver.net/carforyou/demo/contact-us.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 16 Jun 2017 07:26:55 GMT -->
</html>
