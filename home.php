<?php
include("./inc/header.inc.php");

if(!isset($user)){
	echo 'you must log in to view this page';
	header("Location: index.php");
}else{	
	

// logged in news feed
?>
<div class="newscontainer">

<h2>News Feed </h2><br/>
</div>
<?php
 $query = "SELECT * FROM `posts` WHERE `user_posted_to` = '$user' ORDER BY `id` DESC LIMIT 10";
 $query_run = mysqli_query($conn, $query);
    while($row = mysqli_fetch_assoc($query_run)){
    $id_post = $row['id'];
	$body = $row['body'];
	$date_added =  $row['date_added'];
	$added_by = $row['added_by'];
	$user_posted_to = $row['user_posted_to'];
	
  //get user info who has posted 
   $query1 = "SELECT * FROM `users` WHERE  `username` = '$added_by' ORDER BY `id` DESC LIMIT 10";
   $query_run1 = mysqli_query($conn, $query1);
   $row1 = mysqli_fetch_assoc($query_run1);
   $id_user = $row1['id'];
   $posted_by_pic = $row1['profile_pic'];
   $user_added = $row1['username'];
   
   
   //count comments  
          $comments_query = "SELECT * FROM `post_comments` WHERE `post_id` = '$id_post' ORDER BY `id` DESC";
		  $comments_query_run = mysqli_query($conn, $comments_query);
		  $count_comments = mysqli_num_rows($comments_query_run);
		  
		  
  //		  
	     echo "<div class='container1'>";
		 echo "
		
		 $user_added posted on your profile<br/>
		 <img src='userdata/profile_pics/$posted_by_pic' width='50px' height='50px'><br/>
		 <div class='posted_by'>added by</b><a href='$added_by'> $added_by</a>   <b>at $date_added</b>  </div>&nbsp;$body<br /><br/>
		 <div class='newsfeedoption'>
		 <a href='javascript:;' onclick='javascript:togglecomment$id_post ()'><hr/>$count_comments   comments</a>
		  <iframe src='likes_frame.php?u_likes=$id_post' width='150px' height='25px' frameborder='0' margin='0px' padding='0px' ></iframe>
		 </div>";
		 echo '</div>';
		
		
		
		
		
?>

<script language="javascript">
         function togglecomment<?php echo $id_post; ?>() {
           var ele = document.getElementById("togglecomments<?php echo $id_post; ?>");
           var text = document.getElementById("displaycomments<?php echo $id_post; ?>");
           if (ele.style.display == "block") {
              ele.style.display = "none";
           }
           else
           {
             ele.style.display = "block";
           }
         }
</script>	


<?php		  
	      echo"

		 <div class='comment_container'>
		 <div id='togglecomments$id_post' style='display:none;'>

		 <iframe src='./comment_frame.php?id_post=$id_post' width='100%' height='210px' max-height='150px' min-heigth='80px' frameborder='0'></iframe>
		
         </div>
		 </div>";
		 

		 
	}
}	

include_once("chatapp.php");


?>
  





 


