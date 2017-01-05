<?php
/**
 * Created by PhpStorm.
 * User: prince
 * Date: 7/26/2016
 * Time: 7:08 PM
 */

include_once('../inc/connect.inc.php');
if(isset($_POST['username']) && isset($_POST['old_fields']) && isset($_POST['new_fields'])) {

    $user = $_POST['username'];
    $old = $_POST['old_fields'];
    $new = $_POST['new_fields'];

    $query = "UPDATE `profile_employment` SET `employment_info`= '$new' WHERE `user_uid` = '$user' && `employment_info` = '$old' ";
    $query_run = mysqli_query($conn, $query) or die(mysqli_error());

}


if(isset($_POST['add_ed']) && !empty($_POST['add_ed']) && isset($_POST['user'])) {

    $user = $_POST['user'];
    $add_ed = $_POST['add_ed'];
    $query = "INSERT INTO `profile_employment`(`id`, `employment_info`, `user_uid`) VALUES ('','$add_ed','$user')";
    $query_run = mysqli_query($conn, $query);

    $query2 = "SELECT `id` , `employment_info` FROM `profile_employment` WHERE `employment_info` = '$add_ed' && `user_uid` = '$user'";
    $query_run2 = mysqli_query($conn, $query2);
    $rest = mysqli_fetch_assoc($query_run2);
    $id = $rest['id'];
    $fields = $rest['employment_info'];


    echo '
            
    <div class="p_apc_h_data">
        <i class="fa fa-briefcase fa-lg clr_back apc_h_data' . $id . ' "><p>' . $fields . ' </p>
         <div class="p_abc_h_edit" title="Edit" onclick="edit_ab_pr(\'apc_h_data' . $id . '\')"><i class="fa fa-pencil fa-lg" aria-hidden="true"></i></div>
        </i>
    </div >';

}

?>