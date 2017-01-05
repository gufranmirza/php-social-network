<?php
/**
 * Created by PhpStorm.
 * User: prince
 * Date: 7/30/2016
 * Time: 2:11 PM
 */

?>

<?php
include_once('../inc/connect.inc.php');
$user = $_POST['username'];

$query = "SELECT * FROM `friend_requests` WHERE `user_to` = '$user'";
$friendrequests = mysqli_query($conn, $query);
$numrows = mysqli_num_rows($friendrequests);

    echo '<div class="con_pointer"></div>';

if($numrows == 0){

    echo '<div class="empty_foll_cont"><i class="fa fa-info-circle set_clr fa-4x " aria-hidden="true"><p>you dont have any follower request</p></i></div>';

    $user_from = "";

}else{

    while($get_rows = mysqli_fetch_assoc($friendrequests)) {


        $user_from = $get_rows['user_from'];
        $user_to = $get_rows['user_to'];
        $sender_id = $get_rows['id'];


        $query1=" SELECT `profile_pic` FROM `users` WHERE `username` = '$user_from' ORDER BY `id` DESC";
        $query_run1 = mysqli_query($conn, $query1);
        $pic = mysqli_fetch_assoc($query_run1);
        $pic_url = $pic['profile_pic'];




        echo '
        
	    <div class="he_foll_cont" >
	   
		 <div class="m_foll_img"><img src="userdata/profile_pics/'.$pic_url.'" width="50px" height="50px">
		 <div class="user_wants_foll "  id="" >' . $user_from . ' Followed You 
		
		   <br/><div class="allow_foll " onclick="allow_asf('.$sender_id.')">Allow</div><div class="deny_foll " onclick="deny_asf('.$sender_id.')">Deny</div>
		  
		 </div> 
		
		</div>
       
		</div>
		<hr/>
	    ';

    }
}



?>


