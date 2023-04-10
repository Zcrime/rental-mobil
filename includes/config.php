<?php
# Konek ke Web Server Lokal
$myHost	= "localhost";
$myUser	= "u1576270_mobil";
$myPass	= "DX5qK(Pac#Ft";
$myDbs	= "u1576270_mobil";

$koneksidb = mysqli_connect( $myHost, $myUser, $myPass, $myDbs);
if (! $koneksidb) {
  echo "Failed Connection !";
}

?>