<?php
/**
 * Created by PhpStorm.
 * User: prince
 * Date: 7/28/2016
 * Time: 11:10 PM
 */



include_once('../inc/connect.inc.php');



//poke
session_start();
$user = $_SESSION['user_login'];


// $user = As logged in
// $username = Another user


if(isset($_POST['username'])){
    $username = $_POST['username'];

    $remove_check = mysqli_query($conn,"SELECT `friend_array` FROM `users` WHERE `username` = '$user'");
    $friend_remove = mysqli_fetch_assoc($remove_check);
    $friend_array_remove = $friend_remove['friend_array'];
    $array_explode = explode(",", $friend_array_remove);
    $friend_array_count = count($array_explode);

    // $username = Another user

    $commaleft_username = ','.$username;
    $commarignt_username = $username.',';


    if (strstr($friend_array_remove,$commaleft_username)) {
        $friend1 = str_replace("$commaleft_username","",$friend_array_remove);
    }
    else
        if (strstr($friend_array_remove,$commarignt_username)) {
            $friend1 = str_replace("$commarignt_username","",$friend_array_remove);
        }
        else
            if (strstr($friend_array_remove,$username)) {
                $friend1 = str_replace("$username","",$friend_array_remove);
            }




    $removeFriendQuery = mysqli_query($conn,"UPDATE `users` SET `friend_array` ='$friend1' WHERE `username`='$user'");


    $add_friend_check_username = mysqli_query($conn,"SELECT `friend_array` FROM `users` WHERE `username` = '$username'");
    $get_friend_row_username = mysqli_fetch_assoc($add_friend_check_username);
    $friend_array_username = $get_friend_row_username['friend_array'];
    $friend_array_explode_username = explode(",",$friend_array_username);
    $friend_array_count_username = count($friend_array_explode_username);


    $commaleft = ','.$user;
    $commarignt = $user.',';

    if (strstr($friend_array_username ,$commaleft)) {
        $friend2 = str_replace("$commaleft","",$friend_array_username);
    }
    else
        if (strstr($friend_array_username ,$commarignt)) {
            $friend2 = str_replace("$commarignt","",$friend_array_username);
        }
        else
            if (strstr($friend_array_username ,$user)) {
                $friend2 = str_replace("$user","",$friend_array_username);
            }



    $removeFriendQuery_username = mysqli_query($conn,"UPDATE `users` SET `friend_array`='$friend2' WHERE `username`='$username'");
}

?>

<?php

    if(isset($_POST['addusername'])){
        $username = $_POST['addusername'];

        $user_to = $username;
        $user_from = $user;
        if($username == $user ){

            $errormsg = '<br />You cant send friend request to yourself <br />';

        }else{

            $query = "INSERT INTO `friend_requests` VALUES  ('','$user_from', '$user_to') ";
            $create_request = mysqli_query($conn, $query);
        }



    }else{

    }



?>
