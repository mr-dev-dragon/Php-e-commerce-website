<?php
error_reporting(0);
session_start();
require 'connection.php';
if(!empty($_SESSION["customerCode"])){
    header("location: index.php");
}
// INSERTING DATA INTO DATABASE
if(isset($_POST['registerbtn'])){
    $Firstname = $_POST['Firstname'];
    $Lastname  = $_POST['Lastname'];
    $Email = $_POST['Email'];
    $Password = $_POST['Password'];
    $Adress = $_POST['Adress'];
    $Phone = $_POST['Phone'];
    
    }
    if($_POST['Firstname']!="" and $_POST['Lastname']!="" and $_POST['Email']!="" and $_POST['Password']!="" and $_POST['Adress']!="" and $_POST['Phone']!=""){
    $sql="INSERT INTO `customers` (`lastName`, `firstName`,`adress`, `phone`,`email`,`password`) VALUES ( '$Lastname', '$Firstname', '$Adress', '$Phone', '$Email', '$Password')";
        $result= mysqli_query($conn,$sql);
        header("location: login.php");
      }
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="registerstyle.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Quicksand:wght@300&display=swap" rel="stylesheet"> 



    <title>Register</title>

</head>
<body>
    <div class ="offer">Free shipping on orders over 25$</div>
    <div class ="navbar">
     <img  id ='img'src="./images/logo.png" alt="">
     <ul>
     <li id ="home"><a href ="mainpage.php">Home</a></li>
     <li>Product</li>
     </ul>
     <div class="line"></div>
    </div>
    <h1 id='login'>REGISTER</h1>
    <P id='enteremail'>Please fill in the information below:</P>
    <form method="post">
    <input type="text"  id ="Firstname" name ="Firstname" placeholder="Firstname">
    <input type="text"  id ="Lastname" name ="Lastname" placeholder="Lastname">
    <input type="email"  id ="Email" name="Email" placeholder="Email">
    <input type="password"  id ="Password" name="Password" placeholder="Password">
    <input type="text"  id ="Adress" name="Adress" placeholder="Adress">
    <input type="text"  id ="Phone" name="Phone" placeholder="Phone number">
    <button type ="submit" name ="registerbtn"id="registerbtn">CREATE MY ACCOUNT</button>
</form>
<footer class="footer-distributed">
<div class="footer-left">
    <img src="logo2.png" alt="">
    <p class="footer-links">
        <a href="#">Home</a>
        |
        <a href="#">About</a>
        |
        <a href="#">Contact</a>
        |
        <a href="#">Blog</a>
    </p>

    <p class="footer-company-name">Copyright © 2021 <strong>SALMA-COSMETOCS</strong> All rights reserved</p>
</div>

<div class="footer-center">
    <div>
        <i class="fa fa-map-marker"></i>
        <p><span>Tanger</span>
            Morocco</p>
    </div>

    <div>
        <i class="fa fa-phone"></i>
        <p>+212 64**9**258</p>
    </div>
    <div>
        <i class="fa fa-envelope"></i>
        <p><a href="mailto : salmacosmetics@gmail.com">salmacosmetics@gmail.com</a></p>
    </div>
</div>
<div class="footer-right">
    <p class="footer-company-about">
        <span>About the company</span>
        <strong>SALMA COSMETICS</strong> is the Dermatologist Recommended skincare brand offers a wide range of skincare products.
    </p>
    <div class="footer-icons">
        <a href="#"><i class="fa fa-facebook"></i></a>
        <a href="#"><i class="fa fa-instagram"></i></a>
        <a href="#"><i class="fa fa-linkedin"></i></a>
        <a href="#"><i class="fa fa-twitter"></i></a>
        <a href="#"><i class="fa fa-youtube"></i></a>
    </div>
</div>
</footer>


</body>
</html>

</body>
</html>