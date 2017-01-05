<?php
   
   include("./inc/header.inc.php");
   if(isset($_POST['close_account'.$user])){
?>	   
<form method="POST" action="close_account.php" id="submit">
<h2>Do you really want to close account</h2>
<input type="submit" name="yes_close<?php echo $user; ?>" value="Yes! delete my account"/>
<input type="submit" name="dont_close<?php echo $user; ?>" value="No! take me to settings"/>
</form>
<?php	      	  
   }else{
	   
	   
   }
   
   /////////////////////////////////////
   if(isset($_POST['dont_close'.$user])){
	   header("Location:account_settings.php");
	   
   }else if(isset($_POST['yes_close'.$user])){
	$del_query = "UPDATE `users` SET `account_active` = 'no' WHERE `username` = '$user'";
    $del_query_run = mysqli_query($conn, $del_query);
	header("Location: logout.php");
    echo 'Account Has Been Deleted';	
	   
   }

















?>