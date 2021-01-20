<?php
include "../init.php";

//Kategori ekleme 
if (isset($_POST["add_category"])) {
    print_r($_POST);
    $category_name = $_POST['category_name'];
    $category_is_collection = "0";
    if ($_POST["category_master_id"] != "0") {
        $category_master_id = $_POST["category_master_id"];
        $category_is_main = "0";
    } else {
        $category_is_main = "1";
        $category_master_id = "0";
    }
    $category_array = [
        "category_name" => $category_name,
        "category_master_id" => $category_master_id,
        "category_is_collection" => $category_is_collection,
        "category_is_main" => $category_is_main,
        "category_picture" => "1"
    ];

    $category->addCategory($category_array);
    $cat_id = $category->lastInsert();
    $category->addCategoryIMG($cat_id, $_FILES);
    header("location:../../admin/kategori-ekle.php?durum=ok");
    exit;
}