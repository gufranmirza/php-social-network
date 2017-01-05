<?php include ('./inc/header.inc.php'); ?>
<?php
   

	     
		if(isset($_POST['submit']) && !empty($_POST['fname']) && !empty($_POST['lname']) && !empty($_POST['username']) && !empty($_POST['password']) && !empty($_POST['password2']) && !empty($_POST['email']) && !empty($_POST['email2'])){
			
			$fn= ($_POST['fname']);
		    $ln = ($_POST['lname']);
			$un = ($_POST['username']);
			$em = ($_POST['email']);
			$em2 = ($_POST['email2']);
			$pswd = ($_POST['password']);
			$pswd2 = ($_POST['password2']);
			$date = date("Y-m-d H:i:s");
						
			if($em == $em2){
				if($pswd == $pswd2){
					$query = "SELECT `username` FROM `users` WHERE `username` ='$un' "; 
				    $query_run = mysqli_query($conn, $query);
			        $result = mysqli_num_rows($query_run);
					    if($result == NULL){
							$phash = md5($pswd);
						    $addquery = "INSERT INTO `users`(`id`, `username`, `first_name`, `last_name`, `email`, `password`, `sign_up_date`, `activated`) VALUES ('','$un','$fn','$ln','$em','$phash', '$date', '0')";
							$update = mysqli_query($conn, $addquery);
						    die("<h2>Welcome To Find Friends Log in to get started.....</h2>");
						
						
						
						
						
						}else{
						    echo 'Username Exists! Choose a different user name';	
						}
					}else{
						echo 'Password Did Not Match';
					}				
			}else{
				echo 'Email did not match';
			}		
		}else{
			
		}
		
		
		
		if(isset($_POST['lusername']) && isset($_POST['lpassword'])){
			
			$user_login = $_POST['lusername'];
			$user_password =md5($_POST['lpassword']);
			$query = "SELECT `id` FROM `users` WHERE `username`='$user_login' && `password`= '$user_password' &&  `account_active` = 'yes'";
		    $sql = mysqli_query($conn,$query);			
		    $usercount = mysqli_num_rows($sql); 
			    if($usercount == 1 ){
					while($row = mysqli_fetch_array($sql)){
						 $id=$row['id'];
					}
					
				
			    $_SESSION['user_login'] = $user_login;
				header("location: home.php");
				exit();
				
				}else{
					echo 'Icorrect information or account has been deleted';
				    exit();
				}
				
			
			
			
			
			
			
		}
		



?>
	<div id="login">
	    <table class="logintable" background-color="#222">
		    <tr>
			<td width="60%" align="top">
			<h2>Already Member Login Below</h2>
			
			<form action="index.php" method="POST" >
			
			        <input type="text" name="lusername" size="25" placeholder="Username" /><br><br>
					<input type="text" name="lpassword" size="25" placeholder="Password" /><br><br>
					<input type="submit" name="submit" value="Sign In"/>
			
			</form>
			
			</td>
			<td width="40%" align="top">
			<h2>Sign Up Today</h2>
			    <form action="#" method="POST">
				    <input type="text" name="fname" size="25" placeholder="First Name" /><br><br>
					<input type="text" name="lname" size="25" placeholder="Last Name Name"  /><br><br>
				    <input type="text" name="username" size="25" placeholder="Username"  /><br><br>
				    <input type="text" name="email" size="25" placeholder="Enter Email" /><br><br>
				    <input type="text" name="email2" size="25" placeholder="Retype Email"  /><br><br>
			        <input type="password" name="password" size="25" placeholder="Password"/><br><br>
				    <input type="password" name="password2" size="25" placeholder="Retype Password"/><br><br>
				    <input type="submit" name="submit" value="Sign Up"/>

				
				</form>
			</td>
			
			</tr>
		</table>
	</div>	
<?php




 include('./inc/footer.inc.php');






 ?>
	