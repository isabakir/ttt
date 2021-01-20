<?php

include "../init.php";
if (isset($_POST['add_product'])) {
    echo "<pre>";

    print_r($_FILES);
    //echo count($_FILES['product_picture']);

    foreach ($_FILES['images']['size'] as $val) {

        if ($val > 2000000) {
            header("location:../../admin/urun-ekleme.php?durum=no&message=Resim boyutları 2MB'dan büyük olamaz!");
            exit;
        }
    }





    $id = $product->addProduct($_POST);
    $url = $product->addProductImg($id, $_FILES['images'], "P");

    $keys_val = [
        'product_picture' => $url
    ];
    $product->updateSingle($id, $keys_val);
    $props_array = [];
    $props_array["product_id"] = $id;
    for ($i = 0; $i < count($_POST['props_detail']); $i++) {
        $prop_detail = $_POST['props_detail'][$i];
        $prop_amount = $_POST['props_amount'][$i];
        $product->addProductProps($id, $prop_detail, $prop_amount);
    }

    header("location:../../admin/urun-ekleme.php?durum=ok");
    exit;
}


// ürün güncelleme
if (isset($_POST['update_product'])) {
    $error = 0;
    foreach ($_POST as $key) {
        if (empty($key)) {
            $error = 1;
        }
    }
    $product_id = $_POST['product_id'];



    $product_array = [
        "product_code" => $_POST["product_code"],
        "product_name" => $_POST['product_name'],
        "product_description" => $_POST['product_description'],
        "product_price" => $_POST['product_price'],
        "product_stok" => $_POST['product_stok'],
        "product_props" => $_POST['product_props']
    ];
    if ($error == 0) {
        $res = $product->updateSingle($product_id, $product_array);
        if ($res) {
            for ($i = 0; $i < count($_POST['props_id']); $i++) {
                $prop_id = $_POST['props_id'][$i];
                $prop_detail = $_POST['props_detail'][$i];
                $prop_amount = $_POST['props_amount'][$i];
                $product->updateProductProps($prop_id, $prop_detail, $prop_amount);
            }

            echo "başarılı";
            if (isset($_FILES) && !empty($_FILES)) {
                $url = $product->addProductImg($product_id, $_FILES['images'], "P");

                $keys_val = [
                    'product_picture' => $url
                ];
                $product->updateSingle($product_id, $keys_val);
            }
            header("location:../../admin/urun-guncelle.php?durum=ok&id={$product_id}");
            exit;
        }
    }
}

if (isset($_POST['add-sepet'])) {
    echo 1;

    if (isset($_POST['size']) && isset($_POST['product_id'])) {
        $size = $_POST['size'];
        $product_id = $_POST['product_id'];
        $user_id = $user->has_session();
        $is_add_data = [
            $user_id,
            $product_id
        ];
        echo $user_id;
        $is_added = $order->is_added($is_add_data, "select * from shopping where user_id=? and product_id=?");
        print_r($is_added);
        if ($is_added == 0) {
            $data = [$user_id, $product_id, 1, $size];
            $query = "insert into shopping set user_id=?,product_id=?,amount=?,size=?";
            $order->addShopping($data, $query);
            header("location:../../product-detail.php?id={$product_id}");
            exit;
        } else {
            $shop_id = $is_added[0];
            $amount = $is_added[1] + 1;
            $data = [
                $amount,
                $shop_id
            ];
            print_r($data);
            echo "----";
            $order->updateShopping($data, "UPDATE shopping SET amount=? where id=?");
            header("location:../../product-detail.php?id={$product_id}");
            exit;
        }
    }
}