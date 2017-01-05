<?php
/**
 * Created by PhpStorm.
 * User: prince
 * Date: 7/23/2016
 * Time: 1:52 PM
 */


    $msg_id = $_POST['mid'];
    $query = "SELECT * FROM `message_list` WHERE `message_uid` = '$msg_id'";
    $query_run = mysqli_query($conn, $query);
    $r = mysqli_fetch_assoc($query_run);
    echo $r[1];
    echo "\\";
    echo $r[2];

?>
<h1>v rtgio rt grt </h1>
