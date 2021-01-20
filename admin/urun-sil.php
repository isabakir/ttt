<?php
include "../init.php";



if ((isset($_GET['id']))) {
    $products->deleteProduct($_GET['id']);
    header("location:tum-urunler.php?durum=ok&message=Silindi");
    exit;
}