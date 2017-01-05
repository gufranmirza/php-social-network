<?php
    
	include_once("../inc/connect.inc.php");
    $post_id = $_POST['post_id'];
	$query = "UPDATE `new_post` SET `deleted`= '1' WHERE `id` = '$post_id'";
    $query_run = mysqli_query($conn, $query);
	return true;
?>