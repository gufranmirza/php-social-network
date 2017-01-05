<div class='message_pointer'></div>
<?php
include_once('../inc/connect.inc.php');
$user = $_POST['username'];

$query=" SELECT * FROM `message_list` WHERE `user_to` = '$user' ORDER BY `id` DESC";
$query_run = mysqli_query($conn, $query);


while ($result = mysqli_fetch_assoc($query_run)) {

    $body = $result['body'];
    $message_user_from = $result['user_from'];
    $message_user_to = $result['user_to'];
    $message_uid = $result['message_id'];

    $query1=" SELECT `profile_pic` FROM `users` WHERE `username` = '$message_user_from' ORDER BY `id` DESC";
    $query_run1 = mysqli_query($conn, $query1);
    $pic = mysqli_fetch_assoc($query_run1);
    $pic_url = $pic['profile_pic'];


    $query2 = "SELECT `msg_body` FROM `pvt_messages` WHERE `message_uid` = '$message_uid' && `user_to` = '$user' ORDER BY `id` DESC ";
    $query_2 = mysqli_query($conn, $query2);
    $run2 = mysqli_fetch_assoc($query_2);
    $message = $run2['msg_body'];

    echo '
        
	    <div class="he_msg_cont" id="'.$message_uid.'">
	   
		<div class="'. $message_user_from .'" id="'.$message_uid.'from"><div class="'.$user.'" id="'.$message_uid.'to"></div></div>
		 <div class="m_msg_img"><img src="userdata/profile_pics/'.$pic_url.'" width="50px" height="50px">
		 <div class="user "  id="" onclick="rpl_msg_cont('.$message_uid.')">' . $message_user_from . '<br/>' . $message . ' </div> 
		 
		</div>
       
		</div>
		<hr/>
	 ';

}
?>

