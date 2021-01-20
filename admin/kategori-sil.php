<?php
include "../init.php";



if ((isset($_GET['id']))) {
    $category->deleteCategory($_GET['id']);
    header("location:tum-kategoriler.php?durum=ok&message=Silindi");
    exit;
}