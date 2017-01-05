<?php
session_start();
$user = $_SESSION['user_login'];
include("inc/connect.inc.php");

    $query = "SELECT * FROM `friend_requests` WHERE `user_to` = '$user'";
	$friendrequests = mysqli_query($conn, $query);
	$numrows = mysqli_num_rows($friendrequests);
	    if($numrows == 0){

			echo 'you dont have any friend request';
			$user_from = "";

		}else{

			while($get_rows = mysqli_fetch_assoc($friendrequests)) {


				$user_from = $get_rows['user_from'];
				$user_to = $get_rows['user_to'];
				$id = $get_rows['id'];

				echo '' . $user_from . ' wants be your friend<br/>';

			}
		}
			
		

?>


   <input type="submit" name="acceptrequest<?php echo $user_from; ?>" value="Accept Request"/>
      <input type="submit" name="deleterequest<?php echo $user_from; ?>" value="delete request"/>



