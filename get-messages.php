<?php

include_once("./inc/connect.inc.php");




//$user = stripslashes(htmlspecialchars($_GET['user']));
//$message_user_from = stripslashes(htmlspecialchars($_GET['message_user_from']));
$message_uid = stripslashes(htmlspecialchars($_GET['message_uid']));

    $query = "SELECT * FROM `pvt_messages` WHERE `message_uid` = '$message_uid'";
    $query_run = mysqli_query($conn, $query);
	

while ($r = mysqli_fetch_row($query_run) ) {
	echo $r[1];
	echo "\\";
	echo $r[3];
	echo "\n";
}









?>