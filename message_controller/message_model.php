<?php
/**
 * Created by PhpStorm.
 * User: prince
 * Date: 7/22/2016
 * Time: 11:43 PM
 */
?>

<style>
    .modal-box {
        display: none;
        position: fixed;
        z-index: 1000;
        width: 50%;
        background: white;
        border-bottom: 1px solid #aaa;
        border-radius: 4px;
        box-shadow: 0 3px 9px rgba(0, 0, 0, 0.5);
        border: 1px solid rgba(0, 0, 0, 0.1);
        background-clip: padding-box;
        border-radius:5px;
        top: 100px;

    }

    .modal-box header, .modal-box .modal-header {
        padding: 10px;
        border-bottom: 1px solid #ddd;
        border-radius: 5px;
    }

    .modal-box header h3 {
        margin:0;
        text-align:center;
        font-size: 15px;
    }

    .modal-box-msg .modal-body-msg {
        padding: 5px;
        border-bottom: 1px solid #BBB;
        height:490px;

    }


    .modal-box footer,
    .modal-box .modal-footer {
        padding: 1em;
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


</style>


<div id="popup" class="modal-box modal-box-msg">
    <header>

        <a href="javascript:;" class="js-modal-close close_msg"><i class="fa fa-close"></i></a>
        <a href="javascript:;" class="min_model min_msg"><i class="fa fa-minus"></i></a>

        <h3>Messages</h3>
    </header>
    <div class="modal-body-msg">

    </div>
    <footer>
        <button class="js-modal-close button" >Close</button>
        <button  class="button save'.$post_id.'">Save</button>
    </footer>
</div>



<script type="text/javascript">


    function message_popup(){

        var appendthis =  ("<div class='modal-overlay js-modal-close'></div>");

        $("body").append(appendthis);
        $(".modal-overlay").fadeTo(300, 0.7);
        $('.modal-box-msg').fadeIn();
        $(".js-modal-close, .modal-overlay").click(function() {
            $(".modal-box-msg, .modal-overlay").fadeOut(300, function() {
                $(".modal-overlay").remove();
            });
        });

        $(window).resize(function() {
            $(".modal-box").css({
                top: 60,
                left: ($(window).width() - $(".modal-box").outerWidth()) / 2
            });
        });

        $(window).resize();




        var title = $('.title'+pid).html();
        var message = $('.message'+pid).html();

        $('.textarea'+pid).html(title);
        $('.textarea1'+pid).html(message);


        $('.save'+pid).click(function(){

            var title1 = $('.textarea'+pid).val();
            var message1 = $('.textarea1'+pid).val();
            var id = pid;

            $('.title'+pid).html('');
            $('.message'+pid).html('');


            $.post("edit_controller/update_post.php", {title : title1, message:message1, id:id}, function(){




                $('.title'+pid).html(title1);
                $('.message'+pid).html(message1);
                var t = $('.textarea'+pid).html('');
                var s = $('.textarea1'+pid).html('');
                alert(t);
                alert(s);

                $(".modal-box, .modal-overlay").fadeOut(500, function() {
                    $(".modal-overlay").remove();
                });

            })


        });









    }


</script>
