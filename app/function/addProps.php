<?php
include "../init.php";

if (isset($_POST['add_props'])) {
    $props_name = $_POST['props_name'];
    $value = $_POST['props_value'];
    $res = $props->addProps($props_name, $value);
    if ($res) {
        header("location:../../admin/ozellik-ekle.php?durum=ok");
    }
}