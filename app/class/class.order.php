<?php

class Orders extends Config
{
    function addShopping($data, $query)
    {
        $sql = $this->db()->prepare($query);
        $d = $sql->execute($data);
        if ($d) {
            return 1;
        } else {
            return $this->db()->errorInfo();
        }
    }
    function updateShopping($data, $query)
    {
        $sql = $this->db()->prepare($query);
        $sql->execute($data);
    }
    function is_added($data, $query)
    {
        $sql = $this->db()->prepare($query);
        $sql->execute($data);
        if ($sql->rowCount() != 0) {
            $res = $sql->fetch(PDO::FETCH_ASSOC);
            $id = $res['id'];
            $amount = $res['amount'];
            return [$id, $amount];
        } else {
            return 0;
        }
    }
    
    function getMyShop($user_id){
        $sql=$this->db()->prepare("SELECT * FROM shopping where user_id=?");
        $sql->execute([
            $user_id ]);
        $shopList=$sql->fetchAll();
        
        return $shopList;
    }
}