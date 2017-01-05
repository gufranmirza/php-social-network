<?php
/**
 * Created by PhpStorm.
 * User: prince
 * Date: 7/22/2016
 * Time: 10:16 PM
 */
include_once ('../inc/connect.inc.php');

session_start();
    $user = $_SESSION['user_login'];
    $query = " SELECT * FROM `new_post` WHERE `added_to` = '$user' && `deleted` = '0' ";
    $query_run = mysqli_query($conn, $query);




?>



<style>
    .img_frm_pfs {
        width: 200px;
        height: 200px;
        display: inline;

        background: transparent;
    }
    .img_frm_pfs img{
        margin: 2px;
        border: 1px solid #bfbfbf;
        cursor: pointer;
    }
    .p_photos_ow{
        width: 100%;
        height: 100%;
        background: rgba(1,1,1,0.6);
        position: fixed;
        display: none;
        margin-top: -460px;
        z-index: 500;
    }
    .p_photos_dp{
        width: auto;
        height: auto;
        margin: 0 auto;
        margin-top: 9%;
        max-width: 900px;
        max-height:500px;
        background: transparent;
    }
    .p_photos_dp img {
        width: auto;
        height: auto;
        max-width: 900px;
        max-height: 500px;
        margin: 0 auto;
    }

    .close_p_photos_dp {
        float: right;
        margin: 5px;
        margin-top: -30px;
        cursor: pointer;
        background: transparent;
    }
    .inset_clr{
        background: transparent;
        color: #A0A0A0;
    }
    .inset_clr:hover{
        color: #e8e8e8;
    }
    .p_phos_head{
        width: 100%;
        height: 30px;
        padding: 10px;
        margin-left: -10px;
        margin-top: -10px;
        margin-bottom: 5px;
        box-shadow: 0px 0px 2px 0px #222;
    }
    .p_phos_clr{
        color: #525252;
        margin-top: 3px;
    }
    .p_phos_head h2{
        color: #616161;
        margin-left: 35px;
        margin-top: -21px;
        font-size: 20px;
        font-weight: bold;
    }

</style>

<div class="p_photos_wrapper">

    <div class="p_phos_head"><i class="fa fa-photo fa-2x p_phos_clr" ></i><h2> Photos</h2> </div >


    <?php

    while ($fetch_img = mysqli_fetch_assoc($query_run)){

        $img_data = $fetch_img['site_img_url'];
        $post_id = $fetch_img['id'];
        if($img_data != "") {
            echo '<div class="img_frm_pfs "><img src=" ' . $img_data . '" class="pid'.$post_id .'" onclick="simg('.$post_id.')"  width="193" height="193" ></div>';
        }else{

        }
    }



    ?>

</div>
<script type="text/javascript">



    function simg(post_id){

        $('.p_photos_ow').css('display' , 'block');
        var url = $('.pid'+post_id ).attr('src');
        var out = '<div class="p_photos_dp"> <div class="close_p_photos_dp"><i class="fa fa-close fa-2x inset_clr"></i></div> <center background="transparent"><img src="'+url+'" ></center> </div>';
        $('.p_photos_ow').append(out).hide().slideDown(500);

        $('.close_p_photos_dp').click(function(){

           $('.p_photos_dp').slideUp(500).remove();
            $('.p_photos_ow').css('display' , 'none');
        });
    }


</script>


