<?php
session_start();
include_once 'classes.php';
include_once 'connection.php';

if(isset($_SESSION['username']))
{
  header('Location:userhome.php');
}




if(isset($_POST['submit'])){
    
    $name = $_POST['name'];
    $email = $_POST['email'];
    $msg = $_POST['msg'];
    $viewer = new Viewer($conn);
    if($name && $email){
      $result = $viewer->contact_us($name,$email,$msg);
      if ($result==true){
          echo "<script type='text/javascript'>alert('Thank You!!!');window.location.href = 'contactUs.php';</script>";
      }
      else{
          echo "<script type='text/javascript'>alert('Something went wrong:(');window.location.href = 'contactUs.php';</script>";
      }
    }
}



?>




<!DOCTYPE html>
<html lang="en">
<head>
  <title>Blog</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <link rel="stylesheet" href="style.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
  <!-- Compiled and minified CSS -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.7/css/materialize.min.css">

  <!-- Compiled and minified JavaScript -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.7/js/materialize.min.js"></script>
  <!--Import Google Icon Font-->
      <link href='https://fonts.googleapis.com/css?family=Lora' rel='stylesheet' type='text/css'>
      <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
      <!--Import materialize.css-->
      <link type="text/css" rel="stylesheet" href="css/materialize.min.css"  media="screen,projection"/>
      <script src="/materialize/css/materialize.min.css"></script>
      <script type="text/javascript">
        $(document ).ready(function(){
     $(".button-collapse").sideNav();
  })
  </script> 
</head>
<body style="font-family:'Lora',serif; background-image: url('images/back22.jpg'); background-size: cover;">
  <!-- <div class="jumbotron" id="top">
    <div class="container">
      <h1 class="text-center">Bloggy<br/><small><small class="hidden-xs pull-right">Express your thoughts</small></small></h1>
    </div>
  </div> --><!-- /jumbotron -->

  <div class="navbar-fixed ">
  <nav>
    <div style="background-color: black;padding-bottom: 75px;">
      <a href="#!" class="brand-logo" style="text-decoration:none;padding-left: 20px;color: #fff">To All The CricManiacs!!!</a>
      <a href="#" data-activates="mobile-demo" class="button-collapse"><i class="material-icons">menu</i></a>
      <ul class="right hide-on-med-and-down">
      <li><a href="signup.php" class="btn waves-effect waves-light deep-orange lighten-2" style="padding-right:2em;text-decoration:none">Sign Up</a></li>
      <li><a href="login.php" class="btn waves-effect waves-light deep-orange lighten-2" style="padding-right:2em;text-decoration:none">Login</a></li>
      </ul>
       <ul class="side-nav" id="mobile-demo">
         <li><a href="signup.php" style="text-decoration:none">Sign Up</a></li>
      <li><a href="login.php"  style="text-decoration:none">Login</a></li>
      </div>
      </nav>
      </div>
    <h3 class="text-center" style="padding: 50px; color: #000; font-weight: bold;">Made by: Sayee Kulkarni</h3>


<div style="display: inline-block; 
  width: 100%;
  height: 100%;">

  <div style="float: left;margin-left: 200px;">
    <img src="images/sayee22.png" class="img-circle" alt="Cinque Terre" width="304" height="236" >
    <div class="row" style="padding-top:75px;">
    <a href="https://www.facebook.com/Sayee97"><img src="images/fb.png" class="img-circle" alt="facebook" width="50" height="40" hspace="20"></a>
    
    <a href="https://www.linkedin.com/in/sayee-kulkarni-7b6373124/"><img src="images/linkedin.png" class="img-circle" alt="Cinque Terre" width="50" height="40" hspace="20"></a>
    <a href="https://github.com/Sayee97"><img src="images/github.png" class="img-circle" alt="Cinque Terre" width="50" height="40" hspace="20"></a>
    

    </div>
</div>


<div style="float: right; margin-right: 500px;">
<div class="row col s12" width=100%>
            <form class="col s12" method="post">
                <div class="row">
                    <div class="input-field col s9">
                        <input id="name" type="text" class="validate" name="name" autofocus required>
                        <label for="name" style="font-size: 25px; color: #000;">Name</label>
                    </div>
                </div>
                <div class="row">
                    <div class="input-field col s9">
                        <input id="email" name="email" type="email" class="validate" required>
                        <label for="pwd" style="font-size: 25px; color: #000;">Email</label>
                    </div>
                </div>
                <div class="row">
                    <div class="input-field col s9">
                        <input id="msg" type="text" class="validate" name="msg" autofocus>
                        <label for="msg" style="font-size: 25px; color: #000;">Message</label>
                    </div>
                </div>
                <button class="btn waves-effect waves-light" type="submit" name="submit" style="font-size: 25px; color: #fff;">Submit<i class="material-icons right">send</i>
                </button>
            </form>
        </div>
</div>
    </div>
</body>