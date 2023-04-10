<?php 
session_start();
include('includes/config.php');
error_reporting(0);

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
<link rel="stylesheet" href="assets/css/style.css" type="text/css">
<link rel="stylesheet" href="assets/css/owl.carousel.css" type="text/css">
<link rel="stylesheet" href="assets/css/owl.transitions.css" type="text/css">
<link rel="stylesheet" href="style.css">
<link href="assets/css/slick.css" rel="stylesheet">
<link href="assets/css/bootstrap-slider.min.css" rel="stylesheet">
<link href="assets/css/font-awesome.min.css" rel="stylesheet">
		<link rel="stylesheet" id="switcher-css" type="text/css" href="assets/switcher/css/switcher.css" media="all" />
		<link rel="alternate stylesheet" type="text/css" href="assets/switcher/css/red.css" title="red" media="all" data-default-color="true" />
		<link rel="alternate stylesheet" type="text/css" href="assets/switcher/css/orange.css" title="orange" media="all" />
		<link rel="alternate stylesheet" type="text/css" href="assets/switcher/css/blue.css" title="blue" media="all" />
		<link rel="alternate stylesheet" type="text/css" href="assets/switcher/css/pink.css" title="pink" media="all" />
		<link rel="alternate stylesheet" type="text/css" href="assets/switcher/css/green.css" title="green" media="all" />
		<link rel="alternate stylesheet" type="text/css" href="assets/switcher/css/purple.css" title="purple" media="all" />
<link rel="apple-touch-icon-precomposed" sizes="144x144" href="assets/images/favicon-icon/apple-touch-icon-144-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="114x114" href="assets/images/favicon-icon/apple-touch-icon-114-precomposed.html">
<link rel="apple-touch-icon-precomposed" sizes="72x72" href="assets/images/favicon-icon/apple-touch-icon-72-precomposed.png">
<link rel="apple-touch-icon-precomposed" href="assets/images/favicon-icon/apple-touch-icon-57-precomposed.png">
<link rel="shortcut icon" href="assets/images/logo.png">
<link href="https://fonts.googleapis.com/css?family=Lato:300,400,700,900" rel="stylesheet"> 
</head>
<body>

<!--Header-->
<?php include('includes/header.php');?>
<!-- /Header --> 

<!-- Banners -->
<section id="banner" class="banner-section">
  <div class="container">
    <div class="div_zindex">
      <div class="row">
        <div class="col-md-5 col-md-push-1">
          <div class="banner_content">
            <h1>The Best Car At Lowest Rate.</h1>
            <p>Nava Rent Car </p>
            <a href="car-listing.php" class="btn">Selengkapnya <span class="angle_arrow"><i class="fa fa-angle-right" aria-hidden="true"></i></span></a> </div>
        </div>
      </div>
    </div>
  </div>
</section>
<!-- /Banners -->

<!-- Resent Cat-->
<section class="section-padding gray-bg">
  <div class="container">
    <div class="row"> 
      <!-- Nav tabs -->
      <div class="recent-tab">
        <ul class="nav nav-tabs" role="tablist">
          <li role="presentation" class="active"><a href="#resentnewcar" role="tab" data-toggle="tab">Mobil Untuk Anda</a></li>
        </ul>
            <div class="gambar" style="width:50%;height:100%;">
             <img src="assets/images/logo.png" style="width:100%;height:100%;"
          </div>
      </div>

      
      <!-- Recently Listed New Cars -->
      <div class="tab-content">
        <div role="tabpanel" class="tab-pane active" id="resentnewcar">

<?php 
$sql = "SELECT mobil.*, merek.* FROM mobil, merek WHERE merek.id_merek = mobil.id_merek";
$query = mysqli_query($koneksidb,$sql);
if(mysqli_num_rows($query)>0)
{
while($results = mysqli_fetch_array($query))
{

?>  

<div class="col-list-3">
<div class="recent-car-list">
<div class="car-info-box"> <a href="vehical-details.php?vhid=<?php echo htmlentities($results['id_mobil']);?>"><img src="admin/img/vehicleimages/<?php echo htmlentities($results['image1']);?>" class="img-responsive" alt="image"></a>
<ul>
<li><i class="fa fa-car" aria-hidden="true"></i><?php echo htmlentities($results['bb']);?></li>
<li><i class="fa fa-user" aria-hidden="true"></i><?php echo htmlentities($results['seating']);?> Seats</li>
<li><i class="fa fa-car" aria-hidden="true"></i><?php echo htmlentities($results['transmisi']);?></li>
<li><i class="fa fa-car" aria-hidden="true"></i><?php echo htmlentities($results['cc']);?> cc</li>
</ul>
</div>
<div class="car-title-m">
<h6><a href="vehical-details.php?vhid=<?php echo htmlentities($results['id_mobil']);?>"><?php echo htmlentities($results['nama_merek']);?> , <?php echo htmlentities($results['nama_mobil']);?></a></h6>
</div>
<div class="inventory_info_m">
<p><?php echo substr($results['deskripsi'],0,70);?></p>
</div>
</div>
</div>
<?php }}?>
       
      </div>
    </div>
  </div>
</section>
<!-- /Resent Cat -->

<!--Page Header-->
<section class="page-header contactus_page">
  <div class="container">
    <div class="page-header_wrap">
      <div class="page-heading">
        <h1>Daftar Galery</h1>
      </div>
    </div>
  </div>
  <!-- Dark Overlay-->
  <div class="dark-overlay"></div>
</section>
<!-- /Page Header--> 

<!--galery-->
<section class="section-padding gray-bg">
  <div class="container">
    <div class="row"> 
      
      <!-- Nav tabs -->
      <div class="recent-tab">
        <ul class="nav nav-tabs" role="tablist">
          <li role="presentation" class="active"><a href="#resentnewcar" role="tab" data-toggle="tab">Galery</a></li>
        </ul>
      </div>

      
      <!-- Recently galery -->
      <div class="tab-content">
        <div role="tabpanel" class="tab-pane active" id="resentnewcar">

          <?php 
          $sql = "SELECT galeri.* FROM galeri WHERE id";
          $query = mysqli_query($koneksidb,$sql);
          if(mysqli_num_rows($query)>0)
          {
          while($results = mysqli_fetch_array($query))
          {

          ?>  

          <div class="col-list-3">
           <div class="recent-car-list">
            <div class="car-info-box"> <img src="admin/img/vehicleimages/<?php echo htmlentities($results['imgpage']);?>" class="img-responsive" alt="image"></a>
            </div>
          </div>
        </div>
          <?php }}?>
      </div>
    </div>
  </div>
</section>
<!-- /galery-->


<!--Page Header-->
<section class="page-header contactus_page">
  <div class="container">
    <div class="page-header_wrap">
      <div class="page-heading">
        <h1>Hubungi Kami</h1>
      </div>
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

<!-- Mirrored from themes.webmasterdriver.net/carforyou/demo/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 16 Jun 2017 07:22:11 GMT -->
</html>