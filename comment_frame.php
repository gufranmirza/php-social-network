<head>
	<script type="text/javascript" src="js/jquery-1.9.1.min.js" ></script>
</head>
<style>

* {
	
	font-size: 13px;
	font-family: Arial;
	background-color:white;
	border: none;
  }
hr {
	background-color:DCE5EE;
	height: 1px;
	border: 0;
	
}
#post_comment{
	
	
	font-size: 12px;

	background-color:#eee;
	
    border: 1px solid #428bca;
	border-radius: 3px;
}


input[type="submit"].comment_btn {
  
    background-color: #006fc4;
    padding: 6px;
    color: white;
    font-weight: bold;
    float: right;
    margin-top: 11px;
    margin-right: -4px;
    box-shadow: 0px 0px 2px 2px #222;
}
#comment_frame{
	width: 500px;
    height: auto;
    padding: 10px;
    margin: 5px;
  
    background-color: #FFF;
    margin-left: -5px;
}
#comment_frame p {
	background-color:#fff;
}
.temp_comment{
	
	
	width: 500px;
	height: auto;
	padding: 10px;
	margin: 5px;
	border: 1px solid #e0e0e0;
	background-color: #FFF;
	display:none;
	
}
textarea.post_comment{
    background-color: #EFEFEF;
    resize: none;
    border: 1px solid #CCC;
    padding: 7px;
    font-size: 16px;
    margin-right: -5px;
    margin-left: 5px;
    margin-bottom: 9px;
	
	
}
.cmt_img {
    width: 50;
    height: 50px;
    display: inline-block;
    background: red;
    margin-left: -10px;
}
.commenter_name{
	padding-left: 50px;
    margin-top: -45px;
    text-decoration: none;
    padding-bottom: 4px;
	
	
}
.comment_body{
	    padding-left: 50px;
		font-weight:bold;
	
	
}
.commenter_name a {
	text-decoration:none;
	font-weight:bold;
}
</style>



<?php
 include("./inc/connect.inc.php"); 
session_start();
if(!isset($_SESSION['user_login'])){
	$user ="";
}else{
	
$user = $_SESSION['user_login'];


}

?>
<?php
 $id_post = $_GET['id_post'];


$about = "SELECT `profile_pic` FROM `users` WHERE `username` = '$user'";
$run = mysqli_query($conn, $about);
 $result = mysqli_fetch_assoc($run);
  
$pic = $result['profile_pic'];
$profile_pic = 'userdata/profile_pics/'.$pic;



?>


<div id="comment_frame">
<div class="cmt_img"><img src="<?php echo $profile_pic; ?>" width="50" height="50"></div>
<textarea   id="<?php echo $id_post?>" class="post_comment" rows="1" cols="43" ></textarea>
<input type="submit" class="comment_btn" value="comment" name="post_comment<?php echo $id_post; ?>" onclick="send_comment()"/>
</div><hr/>
<div id="temp_c"></div>
  
  
<?php
   
         
		 

          $comments_query = "SELECT * FROM `post_comments` WHERE `post_id` = '$id_post' ORDER BY `id` DESC";
		  $comments_query_run = mysqli_query($conn, $comments_query);
		  $count_comments = mysqli_num_rows($comments_query_run);
	     
		 
		  
		  if( $count_comments != 0 ){
		  while($get_comments = mysqli_fetch_assoc($comments_query_run)){ 
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
		  <div id="comment_frame">
		  <div class="cmt_img"><img src="'.$profile_pic_commented_by.'" width="50" height="50"></div>
		  <div class="commenter_name"><a href="http://localhost/dashboard/str/'.$comment_posted_by.'" target="new">'.$comment_posted_by.'</a></div>';
		  echo '<div class="comment_body">'.$comment_body.'</div>
		  </div>
		  <hr/>
		  ';
		  
		  }
		  }else{
			  
			  echo '<center id="no_comment"><br/><b>No comments yet!</b></br></br></center>>';
			   
		  }
		  
		   
 
?>  
  

<script type="text/javascript">

    function send_comment(){
		
   
	
   var comment_body = $(".post_comment").val();
   var id_post=  $(".post_comment").attr("id");
    
    
   if(comment_body != ""){
	
   $.post("insert_comment.php", {id_post: id_post , comment_text:comment_body}, function(output){   
   comment_body = $(".post_comment").val("");
   $("<div id='comment_frame'>"+output+"</div><hr/>").insertAfter("#temp_c").hide().fadeIn();
   $("#no_comment").css("display", "none");
   
   });
   }
};
</script>

