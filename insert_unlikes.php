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
	
	if($total_likes == 0){
		
	$remove_likes = 0;	
	
	
	echo $remove_likes.' likes';	
		
	}else{

	$remove_likes = $total_likes - 1;   
	  
    $delete_user_query = "DELETE FROM `likes` WHERE `user_liked` = '$user' && `u_likes` = '$u_likes'";
	$delete_user_query_run = mysqli_query($conn,$delete_user_query );
	
	echo $remove_likes.' likes';
	
	}



?>





