<?php 
include "../config.php";

$conf=new Config();

$db=$conf->db();

if(isset($_POST['delete_img'])){
    $image_id=$_POST['image_id'];

    $delete=$db->prepare('DELETE FROM images WHERE image_id=:image_id');
    $delete->execute([

        'image_id'=>$image_id
    ]);
    if($delete){
        echo 1;
    }else{
        echo 0;
    }
}