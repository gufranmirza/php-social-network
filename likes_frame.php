
<head>
	<script type="text/javascript" src="js/jquery-1.9.1.min.js" ></script>	
 </head>


<style>
#button .button {
	

 color: #428bca;
 border: none;
 background-color: #eee;
 
 }
 button {
	

 color: #428bca;
 border: none;
 background-color: #eee;
 
 }
 * {
	 color: #428bca;
	 border:none;
	 background-color:#fff;
	 
 }


</style>

<?php
include("./inc/connect.inc.php"); 
session_start();
if (isset($_SESSION['user_login'])) {
$user = $_SESSION["user_login"];
}
else {
$user = "";
}
    
if (isset($_GET['u_likes'])) {
	$u_likes = ($_GET['u_likes']);
	
	
	$get_query = mysqli_query($conn,"SELECT * FROM `likes` WHERE `u_likes`='$u_likes'");
	$get = mysqli_fetch_assoc($get_query);
    $total_likes = mysqli_num_rows($get_query);	

   
   
   
   
	//previous likes 
	$check_query = "SELECT `user_liked`  FROM `likes` WHERE `user_liked` = '$user' && `u_likes` = '$u_likes' ";
	$check_query_run = mysqli_query($conn, $check_query);
	
	$get_previous_likes = mysqli_num_rows($check_query_run);
	$fetch_data = mysqli_fetch_assoc($check_query_run);
	
	
/*
	
	if ($get_previous_likes >=1){
	 echo '
	
	<input type="submit" value="Unlike" id="'.$u_likes.'" class="like_button'.$u_likes.' active" onclick="like_sys('.$u_likes.')">
	<div  id="button1" style="display: inline;">
    ' . $total_likes . ' likes
	</div>
	
	';
	
	}
	else if ($get_previous_likes == 0) {
	echo '
	
	<input type="submit" class="like_button'.$u_likes.' none" value="Like" id="'.$u_likes.'" onclick="like_sys('.$u_likes.')"/>
	<div id="button1" style="display: inline;" >
	' . $total_likes . ' Likes
	</div>
	
	';
    }   
 */  
}
	
?>

<script type="text/javascript">

    function like_sys(u_likes){
		
		
		if( $("#"+u_likes).hasClass("none")){
		
		like_function(u_likes);
		alert("run like");
		
		}else
		if( $("#"+u_likes).hasClass("active")   ){
		alert("run unlike");	
		unlike_function(u_likes)	
				
		}		
		
	}

    function unlike_function(u_likes){
		
		
		var u_likes = $(".like_button"+u_likes).attr("id");
				
		$(".like_button"+u_likes).attr("value", "Like");	
       	
		
		$.post("insert_unlikes.php", {u_likes: u_likes}, function(output){
			
	
		$("#button1").html(output);	
		
		$("#"+u_likes).attr("class", "like_button"+u_likes +" none");
		
			
			
		});
			
	};
	
	function like_function(u_likes){
		
		var u_likes = $(".like_button"+u_likes).attr("id");
		
		$(".like_button"+u_likes).attr("value", "Unlike");
		
	
		$.post("insert_likes.php", {u_likes : u_likes}, function(output){
	    
		$("#"+u_likes).attr("class", "like_button"+u_likes +" active");
			
		$("#button1").html(output);	
			
		
			
		});	
		
		
		
	};




</script>























