<?php
/**
 * Created by PhpStorm.
 * User: prince
 * Date: 7/23/2016
 * Time: 12:59 AM
 */



?>
<style>
    .modal-box-msg-min {
        display: none;
        position: fixed;
        z-index: 1000;
        width: 25%;
        background: white;
        border-bottom: 1px solid #aaa;
        border-radius: 4px;
        box-shadow: 0 3px 9px rgba(0, 0, 0, 0.5);
        border: 1px solid rgba(0, 0, 0, 0.1);
        background-clip: padding-box;
        border-radius:5px;
        top: 100px;

    }

    .modal-box-msg-min header, .modal-box-msg-min .modal-header {
        padding: 10px;
        border-bottom: 1px solid #ddd;
        border-radius: 5px;
    }

    .modal-box-msg-min header h3 {
        margin:0;
        text-align:center;
        font-size: 15px;
    }

    .modal-box-msg-min .modal-body-msg-min {
        padding: 5px;
        border-bottom: 1px solid #BBB;
        height:420px;
        overflow-y: scroll;
        overflow-x: hidden;

    }


    .modal-box-msg-min footer,
    .modal-box-msg-min .modal-footer {
        padding: 5px;
        border-top: 1px solid #ddd;
        background: rgba(0, 0, 0, 0.02);
        text-align: right;
        font-family: sans-serif;
    }
    .textarea{

        border: none;
        width: 100%;
        -webkit-box-sizing: border-box;
        -moz-box-sizing: border-box;
        box-sizing: border-box;
        padding: 5px;
        font-size: 13px;
        resize: none;
        font-family: sans-serif;
    }
    .textarea:focus{

        outline:0;
    }
    .button {
        background-color: #428bca;
        border: none;
        color: #FFF;
        font-size: 15px;
        margin: 0px auto;
        width: 94px;
        height: 26px;
        box-shadow: 0px 0px 1px 1px #222;
        margin-right: 5px;
        cursor:pointer;
        font-family: sans-serif;
    }

    .modal-overlay {
        opacity: 0;
        filter: alpha(opacity=0);
        position: absolute;
        top: 0;
        left: 0;
        z-index: 900;
        width: 100%;
        height: 100%;
        background: rgba(0, 0, 0, 0.5) !important;
        cursor: pointer;
        position: fixed;
    }

    a.close_msg {
        line-height: 1;
        font-size: 1.5em;
        position: absolute;
        top: 2%;
        right: 2%;
        text-decoration: none;
        color: #bbb;
    }

    a.close_msg:hover {
        color: #222;
        -webkit-transition: color 1s ease;
        -moz-transition: color 1s ease;
        transition: color 1s ease;
    }

    a.min_msg{
        line-height: 1;
        font-size: 1.5em;
        position: absolute;
        top: 2%;
        right: 8%;
        text-decoration: none;
        color: #bbb;

    }
    a.min_msg:hover{

        color: #222;
        -webkit-transition: color 1s ease;
        -moz-transition: color 1s ease;
        transition: color 1s ease;

    }

    .msg {
        margin: 10px 10px;
        padding: 5px;
        font-size: 13px;
        border-radius: 5px;
        border: 1px solid #bbaf9b;
        margin-right: 30px;
        background-color: #e8e8e8;
        color: #000;
        box-shadow: 0px 0px 2px 1px #cecece;
        width: auto;

    }
    .msgfrom {
        background-color: #e8e8e8;
        color: #000;
        margin: 5px 10px 10px 30px;
        border-radius: 5px;
        /* border: 1px solid #7bada1; */
        box-shadow: 0px 0px 2px 1px #cecece;
        width: auto;
    }
    .msgarr {
        width: 0;
        height: 0;
        border-left: 8px solid transparent;
        border-right: 8px solid transparent;
        border-bottom: 8px solid #ababab;
        transform: rotate(315deg);
        margin: -12px 0px 0px 45px;
    }
    .msgarrfrom {
        border-bottom: 8px solid #ababab;
        float: right;
        margin-right: 45px;
        top: 0;
        border-right: 8px solid transparent;
    }
    .msgsentby {
        color: #8C8C8C;
        font-size: 12px;
        margin: 4px 0px 0px 10px;
    }
    .msgsentbyfrom {
        float: right;
        margin-right: 12px;
    }
    input#msginput {
        padding: 7px;
        border: solid 1px #dcdcdc;
        transition: box-shadow 0.3s, border 0.3s;
        width:100%;
    }

</style>


<div id="popup" class=" modal-box-msg-min">
    <header>

        <a href="#" class="js-modal-close close_msg"><i class="fa fa-close"></i></a>
        <a href="#" class="min_model min_msg"><i class="fa fa-minus"></i></a>

        <h3 class="chat_name">Messages</h3>
    </header>
    <div class="modal-body-msg-min " id="modal-body-msg-min">

    </div>
    <footer id="msginput_ft">

    </footer>
</div>



<script type="text/javascript">


    function message_popup(msg_id){

        var appendthis =  ("<div class='modal-overlay js-modal-close'></div>");
        $('#modal-body-msg-min').addClass('msg_area_ac'+msg_id);
        $("body").append(appendthis);
        $(".modal-overlay").fadeTo(300, 0.7);
        $('.modal-box-msg-min').fadeIn();
        $(".js-modal-close, .modal-overlay").click(function() {
            $(".modal-box-msg-min, .modal-overlay").fadeOut(300, function() {
                $(".modal-overlay").remove();

            });
        });

        $(window).resize(function() {
            $(".modal-box-msg-min").css({
                top: 60,
                left: ($(window).width() - $(".modal-box-msg-min").outerWidth()) / 2
            });
        });

        $(window).resize();











    }


</script>

