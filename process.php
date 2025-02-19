<?php
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $username = $_POST["username"];
    $password = $_POST["password"];

    if ($username === "admin" && $password === "password") {
        header("Location: success.php");
    } else {
        header("Location: failure.php");
    }
    exit();
}
?>
