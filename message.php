<?php
    include("./inc/header.inc.php");
    if (isset($_GET['u'])) {
	$username = ($_GET['u']); //get username 
	    
	if (ctype_alnum($username)) {
 	//check user exists
	$check = mysqli_query($conn,"SELECT `username`, `first_name` FROM `users` WHERE `username`='$username'"); //check if user exists
	
	if (mysqli_num_rows($check)===1) {
		$get = mysqli_fetch_assoc($check);
    		$username = $get['username'];
    		$firstname = $get['first_name'];	
	
	//check user is not sending message to itself
		if($username != $user ){
			if(isset($_POST['send_msg'])){
				$msg_title = strip_tags($_POST['msg_title']);
				$msg_body = strip_tags($_POST['msg_body']);
				$date = date("y-m-d");
				$opened = 'no';
				$deleted = "no";
				if($msg_body == ""){

					echo 'Message cant be empty';
				}else{
				$qurey = "INSERT INTO `pvt_messages`(`id`, `user_from`, `user_to`, `msg_title`,`msg_body`, `date`, `opened`, `deleted`) VALUES ('','$user','$username','$msg_title','$msg_body','$date','$opened','$deleted')";
				$query_run = mysqli_query($conn, $qurey);

				echo 'message has been sent';
				}
		}
		 
		echo "<form action='message.php?u=$username' method='POST'>
			<h2>Send message</h2>
			<input type='text' name='msg_title' placeholder='enter your title'/><br/>
			<textarea cols='50' rows='12' name='msg_body' placeholder='type your message here....'></textarea></p>
			<input type='submit' name='send_msg' value='Send'/>
		</form>"; 
		
		}else{
			header("Location: $user");
		}
	
	}
		
	}
    	}
























?>
