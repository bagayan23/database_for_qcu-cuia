<?php
$server = "localhost";
$username = "root";
$password = "";
$database = "qcu_cuia";

$conn = mysqli_connect($server,$username,$password,$database);
 try {
    if(!$conn){
        echo "Connection Failed!",mysqli_connect_error();
    }else{
        // echo "Connection Establish";
    }
 }catch (Exception $e) {
    echo "can't connect to database";
 }
?>