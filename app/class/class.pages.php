<?php

class Pages extends Config
{


    function getStaticPages($param, $query)
    {
        $sql = $this->db()->prepare($query);
        $sql->execute($param);

        return $sql->fetchAll();
    }
}