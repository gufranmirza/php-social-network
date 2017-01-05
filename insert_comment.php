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

        //get post author 
	$query = "SELECT `user_posted_to` FROM `posts` WHERE `user_posted_to` = '$user' ORDER BY `id` DESC LIMIT 10";
    $query_run = mysqli_query($conn, $query);
    $row = mysqli_fetch_assoc($query_run);
    $user_posted_to = $row['user_posted_to'];

		
        
      
			
			
		   $id_post = $_POST['id_post'];	
		   $comment_body=$_POST['comment_text'];
		  
           	
			
			$query = "INSERT INTO `post_comments`(`id`, `comment_body`, `posted_by`, `posted_to`, `post_removed`, `post_id`) VALUES ('','$comment_body','$user','$user_posted_to','0','$id_post')";
			$run = mysqli_query($conn, $query);
			
			
		  $comments_query = "SELECT * FROM `post_comments` WHERE `post_id` = '$id_post' ORDER BY `id` DESC";
		  $comments_query_run = mysqli_query($conn, $comments_query);
		  $count_comments = mysqli_num_rows($comments_query_run);
	      
		 
		  $get_comments = mysqli_fetch_assoc($comments_query_run); 
	      $id_comment = $get_comments['id'];		  
	      $comment_body = $get_comments['comment_body'];	
	      $comment_posted_by = $get_comments['posted_by'];
	      $comment_posted_to = $get_comments['posted_to'];
		  $comment_removed = $get_comments['post_removed'];
		  
		  
		   $about = "SELECT `profile_pic` FROM `users` WHERE `username` = '$comment_posted_by'";
           $run = mysqli_query($conn, $about);
           $result = mysqli_fetch_assoc($run);
           $pic = $result['profile_pic'];
           $profile_pic_commented_by = 'userdata/profile_pics/'.$pic;
		  
		  
		   echo '
		  
		  <div class="cmt_img"><img src="'.$profile_pic_commented_by.'" width="50" height="50"></div>
		  <div class="commenter_name"><a href="http://localhost/dashboard/str/'.$comment_posted_by.'" target="new">'.$comment_posted_by.'</a></div>';
		  echo '<div class="comment_body">'.$comment_body.'</div>
		 
		 
		  ';
		  
		  
						
		
			
?>



