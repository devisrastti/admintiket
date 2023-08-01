<?php

$conn = mysqli_connect("localhost", "root", "", "admintiket");


function register ($data) {
    global $conn;

    $username = mysqli_real_escape_string($conn, $data["username"]);
    $email = strtolower(stripslashes($data["email"]));
    $password = mysqli_real_escape_string($conn, $data["password"]);
    $cpassword = mysqli_real_escape_string($conn, $data["cpassword"]);

    //tambahkan user baru ke database
    mysqli_query($conn, "INSERT INTO user VALUES ('', '$username', '$email', '$password')");

    return mysqli_affected_rows($conn);
}

?>
