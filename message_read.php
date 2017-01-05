

<?php
    
	include("./inc/header.inc.php");
    // get message for logged in user
	echo '<h2> My Unread messages</h2><br/>';

    $query = "SELECT * FROM `pvt_messages` WHERE `user_to` = '$user' && `opened` = 'no' && `deleted` = 'no' ";
	$grab_messages = mysqli_query($conn, $query);
	$rows = mysqli_num_rows($grab_messages);
	if($rows != 0){
	while($get_msg = mysqli_fetch_assoc($grab_messages)){
		
		$id = $get_msg['id'];
		$from = $get_msg['user_from'];
		$to = $get_msg['user_to'];
		$msg_title = $get_msg['msg_title'];
		$body = $get_msg['msg_body'];
		$opened = $get_msg['opened'];
		$deleted = $get_msg['deleted'];
?>


<script language="javascript">
         function toggle<?php echo $id; ?>() {
           var ele = document.getElementById("toggleText<?php echo $id; ?>");
           var text = document.getElementById("displayText<?php echo $id; ?>");
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
		if(strlen($msg_title) >50){
			
			$body = substr($msg_title, 0, 50).'.....';
			echo '<br/>'.$msg_title.'<br/><br/><hr/>';
			
		}else
		
		
		if(strlen($body) >150){
			
			$body = substr($body, 0, 150).'.....';
			echo '<br/>'.$body.'<br/><br/><hr/>';
			
		}else{
			
		$body = $body;	
			
		echo '		
		<form action="message_read.php" method="POST"  name="msg_title" id="button_msg">
		<br/><a href='.$from.'>'.$from.'</a>
		<input type="button" name="openmsg" value="'.$msg_title.'" onclick="javascript:toggle'.$id.'()"/>
		<input type="submit" name="setopened_'.$id.'" value="Set As Read" >
		
		
		</form>
		
		
		
		
		<div id="toggleText'.$id.'" style="display:none" >'.$body.'</div>';	
		
		if(isset($_POST['setopened_'.$id])){
			
			$query = "UPDATE `pvt_messages` SET `opened`= 'yes' WHERE `msg_title` = '$msg_title' && `user_to` = '$user' ";
			$run = mysqli_query($conn, $query);
			header("Location:message_read.php");
			
		}

		
	
			
		}
		
		
		
	}	
	}else{
		echo 'You have not any unread messages yet<br>';
	}
	
	
	echo '<br/><h2> My Read messages</h2><br/>';

    $query = "SELECT * FROM `pvt_messages` WHERE `user_to` = '$user' && `opened` = 'yes' && `deleted` = 'no'";
	$grab_messages = mysqli_query($conn, $query);
	$rows = mysqli_num_rows($grab_messages);
	
	if($rows != 0){
	while($get_msg = mysqli_fetch_assoc($grab_messages)){
		
		$id = $get_msg['id'];
		$from = $get_msg['user_from'];
		$to = $get_msg['user_to'];
		$msg_title = $get_msg['msg_title'];
		$body = $get_msg['msg_body'];
		$opened = $get_msg['opened'];
		$deleted = $get_msg['deleted'];
?>

<script language="javascript">
         function toggle<?php echo $id; ?>() {
           var ele = document.getElementById("toggleText<?php echo $id; ?>");
           var text = document.getElementById("displayText<?php echo $id; ?>");
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
		if(strlen($body) >150){
			
			$body = substr($body, 0, 150).'.....';
			echo '<br/>'.$body.'<br/><br/><hr/>';
			
		}else{			
		if(isset($_POST['delete'.$id])){
				
		$query = "UPDATE `pvt_messages` SET `deleted`= 'yes' WHERE `msg_title` = '$msg_title' && `user_to` = '$user'";
		$run = mysqli_query($conn, $query);
		header("Location:message_read.php");
			
		}
        
        if(isset($_POST['replay'.$id])){
             @header("Location:msg_replay.php?u=$from");
			
		}		
	   echo '<a href='.$from.'>'.$from.'</a></b> 
	        <form action="message_read.php" method="POST" name="msg_title" id="button_msg">
			<input type="button" name="openmsg" value="'.$msg_title.'" onclick="javascript:toggle'.$id.'()"/>
			
			
			<input type="submit" name="replay'.$id.'" value="Replay" title="Replay Message">
			<input type="submit" name="delete'.$id.'" value="X" title="Delete Message">
			
			
			</form>
		
		    <div id="toggleText'.$id.'" style="display:none" >'.$body.'</div><br />';	
		
			
		}		
	}	
	}else{
		echo 'You have not read any messages yet';
		
	}
	












?>