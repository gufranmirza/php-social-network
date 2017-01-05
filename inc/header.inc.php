<?php 
include("connect.inc.php"); 
session_start();
if(!isset($_SESSION['user_login'])){
	$user ="";
}else{
$user = $_SESSION['user_login'];
}

?>
   <head>
    <title>Find Friends</title>
	<link rel="stylesheet" type="text/css" href="/dashboard/str/css/style.css">
	<link rel="stylesheet" type="text/css" href="css/wall.css">
	<link rel="stylesheet" type="text/css" href="css/wall_style.css">
	<script type="text/javascript" src="js/jquery-1.9.1.min.js" ></script>
       <script type="text/javascript" src="js/message_controller.js" ></script>
       <script type="text/javascript" src="js/main.js" ></script>
	   <script type="text/javascript" src="connection_controller/connection_controller.js" ></script>
	<link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
	
   </head>
<body> 
    <div class="header">
	    <div id="wrapper">
		    <div class="logo">
			
			</div>
			<div >
			    <form  class="search_box">
				   
				   <input type="text" action="search.php" name="q" size="60" placeholder="Search..."/>
				   
				   
				</form>
			   
			</div>
			<div id="menu">
<?php

    $query = mysqli_query($conn, "SELECT `opened` FROM `pvt_messages` WHERE `user_to` = '$user' && `opened` = 'no' " );
    $get = mysqli_fetch_assoc($query);
	$unread_rows = mysqli_num_rows($query);
	$unread_rows = '('.$unread_rows.')';

	$query1=" SELECT `profile_pic` FROM `users` WHERE `username` = '$user' ORDER BY `id` DESC";
	$query_run1 = mysqli_query($conn, $query1);
	$pic = mysqli_fetch_assoc($query_run1);
	$pic_url = $pic['profile_pic'];
	







?>			    
				 <?php
				
				    if(!$user){
						
						echo '
				 <a href="">Home</a>
			     <a href="#">About</a>
				 <a href="#">Log In </a>
				 <a href="#"> Sign up</a>
					';
					 
					}else{
						
						echo '
				 <div class="mset_1"><a href="home.php"><i class="fa fa-home fa-2x inner3" title="home"></i> </a></div>
			     
				 <div class="mset_3"><a href="'.$user.'"><img src="userdata/profile_pics/'.$pic_url.'" class="header_pic_min" ><div class="in_set3"> '  .$user.'</div></a></div>
				
				 <div class="mset_2" onclick="con_popup()"><a href="javascript:;"><i class="fa fa-users circle inner3 fa-2x" aria-hidden="true"></i> <div class="in_set2 inner3"></div></a></div>

				  
				 <div class="mset_4" onclick="message_popup_min()"><a href="javascript:;"><i class="fa fa-comments fa-2x inner3"> </i> <div class="in_set4">'.$unread_rows.'</div></a></div>
				 <div class="mset_5"><a href="account_settings.php"><i class="fa  fa-cog fa-2x inner3" background="transparent" title="Settings"></i> </a></div>
				 <a href="logout.php"><i class="fa fa-sign-out fa-2x inner3" title="Log Out"> </i></a>	
				 
						';
					
					}
				
				 ?>
						
			</div>
		
		
		
		</div>
	</div>






</body>

	