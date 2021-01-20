<?php

class Products extends Config
{
    //idsi verilen ürünün tüm veritabanı bilgisi çekilecek get methodlarına aktarılıcak
    //config class ı extends edicek

    function addProduct($product)
    {

        $keys = array_keys($product);
        $values = array_values($product);

        $sql = $this->db()->prepare("INSERT INTO products SET
        {$keys[0]}=:{$keys[0]},
        {$keys[1]}=:{$keys[1]},
        {$keys[2]}=:{$keys[2]},
        {$keys[3]}=:{$keys[3]},
        {$keys[4]}=:{$keys[4]},
        {$keys[5]}=:{$keys[5]},
        {$keys[6]}=:{$keys[6]},
        {$keys[7]}=:{$keys[7]}
        ");

        $result = $sql->execute([
            $keys[0] => $values[0],
            $keys[1] => $values[1],
            $keys[2] => $values[2],
            $keys[3] => $values[3],
            $keys[4] => $values[4],
            $keys[5] => $values[5],
            $keys[6] => $values[6],
            $keys[7] => $values[7],
        ]);
        //echo  $keys[6] . " " . $values[6];
        if ($result) {
            $id = $this->lastInsert();
            return $id;
        } else {
            $this->db()->errorInfo();
        }
    }
    //son eklenen ürün idsini döndürür
    function lastInsert()
    {
        $id = $this->db()->prepare('SELECT * FROM products order by product_id desc limit 1');
        $id->execute([]);
        return $id->fetch(PDO::FETCH_ASSOC)['product_id'];
    }

    //ürün resimlerini yükler
    function addProductImg($product_id, $files, $type = "P")
    {

        for ($i = 0; $i < count($files); $i++) {
            if (!isset($files['name'][$i])) continue;
            if ($files['name'][$i] == "") continue;
            $dosya = $files['tmp_name'][$i];
            $file_name = $files['name'][$i];
            $file_name = str_replace(" ", "-", $file_name);
            $url = 'resimler/products/' . $file_name;
            $sql = $this->db()->prepare('insert into images set  product_id=:product_id, image_url=:image_url,image_type=:image_type');
            $sql->execute([
                'product_id' => $product_id,
                'image_url' => $url,
                'image_type' => $type
            ]);
            copy($dosya, '../../resimler/products/' . $file_name);
        }


        return $url;
    }
    //ürün Özellik ekleme
    function addProductProps($product_id, $props_detail, $props_amount)
    {

        $sql = $this->db()->prepare("INSERT INTO properties_detail SET product_id=:product_id,prop_detail=:prop_detail,prop_amount=:prop_amount");
        $sql->execute([
            'product_id' => $product_id,
            'prop_detail' => $props_detail,
            'prop_amount' => $props_amount
        ]);
    }
    // ürün özellikleri getir
    function getProductProps($product_id)
    {
        $sql = $this->db()->prepare("SELECT * FROM properties_detail where product_id=:product_id");
        $sql->execute([
            'product_id' => $product_id
        ]);
        $res = $sql->fetchAll();
        return $res;
    }
    //ürün özellikleri güncelle
    function updateProductProps($id, $prop_detail, $prop_amount)
    {
        $sql = $this->db()->prepare("UPDATE properties_detail SET prop_detail=:prop_detail,prop_amount=:prop_amount where id=:id");
        $sql->execute([

            'prop_detail' => $prop_detail,
            'prop_amount' => $prop_amount,
            'id' => $id
        ]);
    }
    //array_parse
    function arrayParse($array)
    {
        $keys = array_keys($array);
        $vals = array_values($array);
        $sets = "";
        $upt = [];
        $i = 0;
        foreach ($keys as $k) {
            if (count($keys) - 1 == $i) {
                $sets .= $k . "=:" . $k;
            } else {
                $sets .= $k . "=:" . $k . ",";
            }

            $upt[$k] = $vals[$i];
            $i++;
        }
        return [$sets, $upt];
    }

    //tekli ürün güncelleme
    function updateSingle($product_id, $keys_val)
    {
        $keys = array_keys($keys_val);
        $vals = array_values($keys_val);
        $sets = "";
        $upt = [];
        $i = 0;
        foreach ($keys as $k) {
            if (count($keys) - 1 == $i) {
                $sets .= $k . "=:" . $k;
            } else {
                $sets .= $k . "=:" . $k . ",";
            }

            $upt[$k] = $vals[$i];
            $i++;
        }

        $upt['product_id'] = $product_id;
        $sql = $this->db()->prepare("update products set
        {$sets} where product_id=:product_id
        ");
        $sql->execute($upt);
        if ($sql) {
            return 1;
        } else {
            return 0;
        }
    }
    //Tüm Ürünleri Getiren Fonksyion
    function getAllProducts()
    {
        $sql = $this->db()->prepare("SELECT * FROM products");
        $sql->execute([]);
        $res = $sql->fetchAll();
        return $res;
    }

    //Tekli Olarak Ürünleri getiren fonksiyon
    function getProduct($product_id)
    {
        $sql = $this->db()->prepare("SELECT * FROM products where product_id=:product_id");
        $sql->execute([
            'product_id' => $product_id
        ]);
        $res = $sql->fetch(PDO::FETCH_ASSOC);
        return $res;
    }
    // product code a göre getirme
    function getProductCode($product_code)
    {
        $sql = $this->db()->prepare("SELECT * FROM products where product_code=:product_code");
        $sql->execute([
            'product_code' => $product_code
        ]);
        $res = $sql->fetchAll();
        return $res;
    }
    //coklu ürün listeleme
    function getProductList($param = [], $query)
    {
        $sql = $this->db()->prepare($query);
        $sql->execute($param);
        $res = $sql->fetchAll();
        return $res;
    }
    //Ürün Görsellerini Getirme
    function getImages($product_id)
    {
        $sql = $this->db()->prepare("SELECT * FROM images where product_id=:product_id");
        $sql->execute([
            'product_id' => $product_id
        ]);
        $res = $sql->fetchAll();
        return $res;
    }
    //Ürün Silme

    function deleteProduct($product_id)
    {
        $sql = $this->db()->prepare("DELETE  FROM products where product_id=:product_id");
        $sql->execute([
            'product_id' => $product_id
        ]);
    }
}