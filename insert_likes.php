<?php
include_once("./inc/connect.inc.php");
session_start();
if(!isset($_SESSION['user_login'])){
	$user ="";
}else{
	
$user = $_SESSION['user_login'];

	
}
?>

<?php



    $u_likes = $_POST['u_likes'];

    $get_query = mysqli_query($conn,"SELECT * FROM `likes` WHERE `u_likes`='$u_likes'");
	$get = mysqli_fetch_assoc($get_query);
    $total_likes = mysqli_num_rows($get_query);		   
	   
	   
	
    $total_likes = $total_likes + 1;
    $add_post_query = "INSERT INTO `likes`(`id`, `user_liked`, `total_likes`, `u_likes`) VALUES ('','$user','','$u_likes')";
    $add_post_query_run = mysqli_query($conn, $add_post_query);	
	
	
	echo $total_likes.' Likes';
    

?>