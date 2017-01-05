
<?php

	include_once("../inc/connect.inc.php");
	$title = $_POST['title'];
	$message = $_POST['message'];
	$id = $_POST['id'];
	
	$query = "UPDATE `new_post` SET `site_title`='$title',`text_area`='$message' WHERE `id` = '$id'";
	$query_run = mysqli_query($conn, $query);


?>