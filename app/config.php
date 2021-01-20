<?php
ob_start();
session_start();


class Config
{
    public $host = "localhost";
    public $db_name = "marsel";
    public $db_username = "root";
    public $db_pass = "";



    public function db()
    {
        $db = new PDO("mysql:host={$this->host};dbname={$this->db_name};charset=utf8", "{$this->db_username}", "{$this->db_pass}");
        if ($db) {
        }
        return $db;
    }
}