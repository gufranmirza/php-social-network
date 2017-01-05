<?php
/**
 * Created by PhpStorm.
 * User: prince
 * Date: 7/26/2016
 * Time: 3:39 PM
 */
include_once('../inc/connect.inc.php');

if(isset($_POST['username']) && isset($_POST['old_fields']) && isset($_POST['new_fields'])){

    $user = $_POST['username'];
    $old = $_POST['old_fields'];
    $new = $_POST['new_fields'];

    $query = "UPDATE `profile_education` SET `education_inf`= '$new' WHERE `user_uid` = '$user' && `education_inf` = '$old' ";
    $query_run = mysqli_query($conn, $query);


}


if(isset($_POST['add_ed']) && !empty($_POST['add_ed']) && isset($_POST['user'])) {

    $user = $_POST['user'];
    $add_ed = $_POST['add_ed'];
    $query = "INSERT INTO `profile_education`(`id`, `education_inf`, `user_uid`) VALUES ('','$add_ed','$user')";
    $query_run = mysqli_query($conn, $query);

    $query2 = "SELECT `id` , `education_inf` FROM `profile_education` WHERE `education_inf` = '$add_ed' && `user_uid` = '$user'";
    $query_run2 = mysqli_query($conn, $query2);
    $rest = mysqli_fetch_assoc($query_run2);
    $id = $rest['id'];
    $fields = $rest['education_inf'];


    echo '
            
    <div class="p_apc_h_data">
        <i class="fa fa-university fa-lg clr_back apc_h_data' . $id . ' "><p>' . $fields . ' </p>
         <div class="p_abc_h_edit" title="Edit" onclick="edit_ab_pr(\'apc_h_data' . $id . '\')"><i class="fa fa-pencil fa-lg" aria-hidden="true"></i></div>
        </i>
    </div >';

}
?>