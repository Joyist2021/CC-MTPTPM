<?php
session_start();
require_once __DIR__ . "/../../lib/database.php";
require_once __DIR__ . "/../../lib/funtion.php";
$db = new Database;

if (!isset($_SESSION['admin_id'])) {
    header("location: /doanchuyennganh/login/");
}
define("ROOT", $_SERVER['DOCUMENT_ROOT'] . "/doanchuyennganh/public/uploads/");
