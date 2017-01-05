<?php

include_once('../inc/connect.inc.php');
session_start();
$user = $_SESSION['user_login'];
$user_to  = $user;

if(isset($_POST['accept_follow'])){
    //user array which is logged in
    $query = "SELECT `friend_array` FROM `users` WHERE `username` = '$user'";
    $add_friend_check = mysqli_query($conn, $query);
    $get_friend_row = mysqli_fetch_assoc($add_friend_check);
    $get_friend_array = $get_friend_row['friend_array'];
    $explodearray = explode(",",$get_friend_array);
    $arraycount = count($explodearray);


    //user array which is sending request

    $from_id = $_POST['accept_follow'];
    $query = "SELECT `user_from` FROM `friend_requests` WHERE `id` = '$from_id'";
    $friendrequests = mysqli_query($conn, $query);
    $get_user_from = mysqli_fetch_assoc($friendrequests);
    echo  $user_from = $get_user_from['user_from'];

    $query1 = "SELECT `friend_array` FROM `users` WHERE `username` = '$user_from'";
    $add_friend_check_friend = mysqli_query($conn, $query1);
    $get_friend_row_friend = mysqli_fetch_assoc($add_friend_check_friend);
    $get_friend_array_friend = $get_friend_row_friend['friend_array'];
    $explodefriendarray = explode(",",$get_friend_array_friend);
    $arraycountfriend = count($explodefriendarray);


    if($get_friend_array == ""){

        $arraycount = count(NULL);
    }
    if($get_friend_array_friend == ""){

        $arraycountfriend = count(NULL);
    }
    if($arraycount == count(NULL)){

        $query = "UPDATE `users` SET `friend_array` =CONCAT(friend_array, '$user_from' )WHERE `username` = '$user'";
        $run = mysqli_query($conn, $query);
    }
    if($arraycountfriend == count(NULL)){

        $query = "UPDATE `users` SET `friend_array` =CONCAT(friend_array, '$user_to') WHERE `username` = '$user_from'";
        $run = mysqli_query($conn, $query);
    }
    if($arraycount >= 1){

        $query = "UPDATE `users` SET `friend_array` =CONCAT(friend_array, ',$user_from') WHERE `username` = '$user'";
        $run = mysqli_query($conn, $query);
    }
    if($arraycountfriend >= 1){

        $query = "UPDATE `users` SET `friend_array` =CONCAT(friend_array, ',$user_to') WHERE `username` = '$user_from'";
        $run = mysqli_query($conn, $query);
    }

    $query = "DELETE FROM `friend_requests` WHERE `user_to` = '$user_to' && `user_from` = '$user_from'";
    $query_run = mysqli_query($conn, $query);



}

if(isset($_POST['deleterequest'])){
    echo  $user_from_id = $_POST['deleterequest'];




    $query_ignore = "DELETE FROM `friend_requests` WHERE  `id` = '$user_from_id' ";
    $query_run = mysqli_query($conn, $query_ignore);


}



?>