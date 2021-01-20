<?php

class Category extends Config
{

    function addCategory($categorys)
    {
        $keys = array_keys($categorys);
        $vals = array_values($categorys);

        $sql = $this->db()->prepare("INSERT INTO categorys SET
            {$keys[0]}=:{$keys[0]},
            {$keys[1]}=:{$keys[1]},
            {$keys[2]}=:{$keys[2]},
            {$keys[3]}=:{$keys[3]}
        ");
        $result = $sql->execute([
            $keys[0] => $vals[0],
            $keys[1] => $vals[1],
            $keys[2] => $vals[2],
            $keys[3] => $vals[3]
        ]);
        print_r($categorys);
        if ($result) {
            $id = $this->db()->lastInsertId();
            return $id;
        } else {
            print_r($this->db()->errorInfo());
        }
    }
    function lastInsert()
    {
        $id = $this->db()->prepare('SELECT * FROM categorys order by category_id desc limit 1');
        $id->execute([]);
        return $id->fetch(PDO::FETCH_ASSOC)['category_id'];
    }



    function getMain()
    {
        $main = $this->db()->prepare('SELECT * FROM categorys where category_is_main=:category_is_main order by category_index ASC');
        $main->execute([
            'category_is_main' => '1'
        ]);

        $result = $main->fetchAll();
        return $result;
    }
    function getAllCategories()
    {
        $main = $this->db()->prepare('SELECT * FROM categorys ');
        $main->execute([]);

        $result = $main->fetchAll();
        return $result;
    }
    function getSubCategories($main_id)
    {
        $sub = $this->db()->prepare("SELECT * FROM categorys where category_master_id=:category_master_id order by category_index ASC");
        $sub->execute([
            'category_master_id' => $main_id
        ]);
        $res = $sub->fetchAll();
        return $res;
    }
    function getCategory($category_id)
    {
        if ($category_id <= 0) return 0;

        $sub = $this->db()->prepare("SELECT * FROM categorys where category_id=:category_id");
        $sub->execute([
            'category_id' => $category_id
        ]);
        $res = $sub->fetchAll();
        return $res;
    }
    function updateCategory($data, $sql)
    {
        $sql = $this->db()->prepare($sql);
        $sql->execute($data);
    }




    function addCategoryIMG($cat_id, $files)
    {




        $dosya = $files["category_picture"]['tmp_name'];
        $file_name = $files["category_picture"]['name'];
        $file_name = str_replace(" ", "-", $file_name);
        $url = 'resimler/categorys/' . $file_name;

        copy($dosya, '../../resimler/categorys/' . $file_name);

        $data = [$url, $cat_id];
        $query = "UPDATE categorys SET category_picture=? where category_id=?";
        $this->updateCategory($data, $query);
    }

    function deleteCategory($cat_id)
    {
        $sql = $this->db()->prepare("DELETE  FROM categorys where category_id=:category_id");
        $sql->execute([
            'category_id' => $cat_id
        ]);
    }
}