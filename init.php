<?php

include __DIR__ . "/app/config.php";
include __DIR__ . "/app/class/class.users.php";
include __DIR__ . "/app/class/class.category.php";
include __DIR__ . "/app/class/class.products.php";
include __DIR__ . "/app/class/class.props.php";
include __DIR__ . "/app/class/class.order.php";
include __DIR__ . "/app/class/class.anasayfa.php";
include __DIR__ . "/app/class/class.pages.php";

$category = new Category();
$product = new Products();
$props = new Props();
$users = new Users();
$orders = new Orders();
$anasayfa = new Anasayfa();
$pages = new Pages();