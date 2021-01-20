<?php


class Props extends Config
{

    function addProps($props_name, $value)
    {
        $sql = $this->db()->prepare("insert into properties set prop_name=:prop_name,value=:value");
        $sql->execute([
            "prop_name" => $props_name,
            "value" => $value
        ]);
        if ($sql) {
            return 1;
        }
    }

    function getProps()
    {
        $sql = $this->db()->prepare("SELECT * FROM properties");
        $sql->execute([]);
        $res = $sql->fetchAll();
        return $res;
    }
}