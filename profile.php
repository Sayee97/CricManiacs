<?php

if (!isset($_GET['username']))
{
	header('Location:index.php');
}
include_once 'classes.php';
include_once 'connection.php';
?>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Blog</title>
  
      <link href='https://fonts.googleapis.com/css?family=Lora' rel='stylesheet' type='text/css'>
      <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
      <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="style.css">
    
  <!-- Compiled and minified JavaScript -->
  <!--Import Google Icon Font-->
  <link href = "dist/css/bootstrap.min.css" rel="stylesheet" />
      <link href='https://fonts.googleapis.com/css?family=Lora' rel='stylesheet' type='text/css'>
      <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
      <!--Import materialize.css-->
      <link type="text/css" rel="stylesheet" href="materialize/css/materialize.min.css"  media="screen,projection"/>
       <script type="text/javascript" src="materialize/js/jquery-3.1.0.min.js"></script>
      <script type="text/javascript" src="materialize/js/materialize.min.js"></script>
      <script type="text//javascript">
        $(document ).ready(function(){
     $(".button-collapse").sideNav();
  })
  </script> 
</head>
<body style="font-family:'Lora',serif; background-size: cover;background-image: url('images/back22.jpg');">

<div class="navbar-fixed ">
<nav>
    <div class="nav-wrapper black">
      <a href="index.php" class="brand-logo" style="text-decoration:none">CricManiacs</a>
      <a href="#" data-activates="mobile-demo" class="button-collapse"><i class="material-icons">menu</i></a>
      <ul id ="nav-mobile" class="right hide-on-med-and-down">
      <li><a href="signup.php" class="btn waves-effect waves-light deep-orange lighten-2" style="padding-right:2em;text-decoration:none">Sign Up</a></li>
      <li><a href="login.php" class="btn waves-effect waves-light deep-orange lighten-2" style="padding-right:2em;text-decoration:none">Login</a></li>
      </ul>
       <ul class="side-nav" id="mobile-demo">
          <li><a href="signup.php"  style="text-decoration:none">Sign Up</a></li>
      <li><a href="login.php" style="text-decoration:none">Login</a></li>
       </ul>
      </div>
      </nav>
      </div>
<?php
if(isset($_GET['username']))
{
$username = $_GET['username'];
$viewer = new Viewer($conn);
$word_limit = '10';
$profile = $viewer->get_blogger($username);
if($profile != false)
{
	echo '<h1 class = "text-center"> Blogs by '.$profile.' </h1>';
}
$profile = $viewer->profile($username);

if($profile != false)
{
	$i=0;
    while($i < count($profile)) {
    
    echo '<div class="row">
    <div class="col s12 m6" style="padding-left:2em;">
    <div class="card sticky-action medium">
    <div class="card-image  waves-effect waves-block waves-light">
              <img class = "activator" src="'.$viewer->get_blog_image($profile[$i][0]).'">
            </div>
    <div class="card-content">
    <span class="card-title">'.$profile[$i][1].'<p class="flow-text grey-text">'.$profile[$i][3].','.$profile[$i][4];
    if(!is_null($profile[$i][5]))
    {
      echo ',Updated on '.$profile[$i][5].'</p></span>';
    }
    echo '<h4 class="flow-text">'.$viewer->limit_words($profile[$i][2],$word_limit).'......</h4></div>';

    echo '<div class = "text-center card-action"><a href ="view-blog.php?blog_id='.$profile[$i][0].'" >Read More</a></div>';
   echo '<div class="card-reveal"><span class="card-title">'.$profile[$i][1].'<i class="material-icons right">close</i><h6 class="flow-text grey-text">'.$profile[$i][3].','.$profile[$i][4].'<br/></h6> </span><h4 class="flow-text">'.$profile[$i][2].'</div>
      </div></div>';
    $i=$i+1;  
    }
}

}
?>