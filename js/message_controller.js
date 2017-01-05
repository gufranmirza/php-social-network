
    
    function message_popup_min(){

        $('.header_connection_ls').slideUp().css('display', 'none');

        if( $('.header_msg_list').css('display') == 'none') {
            $('.header_msg_list').css('display', 'block').hide().fadeIn();
        }else{
            $('.header_msg_list').slideUp().css('display', 'none');
        }


        $.post('message_controller/get_header_messages.php', {username:user}, function(output){
            var header_op =  '<p class="header_msgc_op"><a href="javascript:;">New Message</a> | <a href="javascript:;" >All Messages</a></p><hr/>';
            $('.header_msg_list').html('');
            $('.header_msg_list').append(header_op);
            $('.header_msg_list').append(output);

        });






    }
    function rpl_msg_cont(msg_id){
        $('.header_msg_list').slideUp().css('display', 'none');
        message_popup(msg_id);

        $('#modal-body-msg-min').removeClass('active');
        $('.msg_area_ac'+ msg_id).addClass('active');



            var message_user_from = $('#'+msg_id+'from').attr('class');
            var user = $('#'+msg_id+'to').attr('class');
            var message_uid =msg_id ;
            $('.chat_name').html(message_user_from);

            var msginput_ft = document.getElementById("msginput_ft");
            var msg_input = '<div class="bottom"><input type="text" name="msginput" class="msginput" id="msginput"  onkeydown="if (event.keyCode == 13) sendmsg('+msg_id+')"  value="" placeholder="Enter your message here ....Press Enter so send "> </div>';
            msginput_ft.innerHTML = msg_input;



            var output = "";
            var xmlhttp=new XMLHttpRequest();
            xmlhttp.onreadystatechange=function() {
                if (xmlhttp.readyState==4 && xmlhttp.status==200) {
                    var response = xmlhttp.responseText.split("\n")
                    var rl = response.length
                    var item = "";
                    for (var i = 0; i < rl; i++) {
                        item = response[i].split("\\")
                        if (item[1] != undefined) {
                            if (item[0] == user) {
                                output += "<div class=\"msgc\" style=\"margin-bottom: 30px;\"> <div class=\"msg msgfrom\">" + item[1] + "</div> <div class=\"msgarr msgarrfrom\"></div> <div class=\"msgsentby msgsentbyfrom\">Sent by " + item[0] + "</div> </div>";
                            } else {
                                output += "<div class=\"msgc\"> <div class=\"msg\">" + item[1] + "</div> <div class=\"msgarr\"></div> <div class=\"msgsentby\">Sent by " + item[0] + "</div> </div>";
                            }
                        }
                    }
                    var msgarea = document.getElementById("modal-body-msg-min");
                    msgarea.innerHTML = output;
                    msgarea.scrollTop = msgarea.scrollHeight;

                }
            }
            xmlhttp.open("GET","get-messages.php?"+"message_uid="+message_uid,true);
            xmlhttp.send();

        setInterval (function() { update_msg(msg_id)  } ,2500);


    }

    function sendmsg(msg_id){

        var message_user_from = $('#'+msg_id+'from').attr('class');
        var user = $('#'+msg_id+'to').attr('class');
        var message_uid =msg_id ;


        var msginput =  document.getElementById("msginput");
        var message = msginput.value;

        if (message != "") {



            // alert(msgarea.innerHTML)
            // alert(getcookie("messengerUname"))



            var xmlhttp=new XMLHttpRequest();

            xmlhttp.onreadystatechange=function() {
                if (xmlhttp.readyState==4 && xmlhttp.status==200) {

                    var msgarea = document.getElementById("modal-body-msg-min");
                    msgarea.innerHTML += "<div class=\"msgc\" style=\"margin-bottom: 30px;\"> <div class=\"msg msgfrom\">" + message + "</div> <div class=\"msgarr msgarrfrom\"></div> <div class=\"msgsentby msgsentbyfrom\">Sent by " + user + "</div> </div>";
                    msgarea.scrollTop = msgarea.scrollHeight;
                    msginput.value = "";

                }
            }
            xmlhttp.open("GET","update-messages.php?message_user_from=" + message_user_from + "&message=" + message + "&user=" + user + "&message_uid="+ message_uid,true);
            xmlhttp.send();
        }else{



        }

    }

    function update_msg(msg_id){



        if( $('.msg_area_ac'+msg_id).hasClass('active') ) {

            var message_user_from = $('#' + msg_id + 'from').attr('class');
            var user = $('#' + msg_id + 'to').attr('class');
            var message_uid = msg_id;

            var output = "";
            var xmlhttp = new XMLHttpRequest();
            xmlhttp.onreadystatechange = function () {
                if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
                    var response = xmlhttp.responseText.split("\n")
                    var rl = response.length
                    var item = "";
                    for (var i = 0; i < rl; i++) {
                        item = response[i].split("\\")
                        if (item[1] != undefined) {
                            if (item[0] == user) {
                                output += "<div class=\"msgc\" style=\"margin-bottom: 30px;\"> <div class=\"msg msgfrom\">" + item[1] + "</div> <div class=\"msgarr msgarrfrom\"></div> <div class=\"msgsentby msgsentbyfrom\">Sent by " + item[0] + "</div> </div>";
                            } else {
                                output += "<div class=\"msgc\"> <div class=\"msg\">" + item[1] + "</div> <div class=\"msgarr\"></div> <div class=\"msgsentby\">Sent by " + item[0] + "</div> </div>";
                            }
                        }
                    }
                    var msgarea = document.getElementById("modal-body-msg-min");
                    msgarea.innerHTML = output;
                    msgarea.scrollTop = msgarea.scrollHeight;


                }
            }
            xmlhttp.open("GET", "get-messages.php?" + "message_uid=" + message_uid, true);
            xmlhttp.send();

        }


    }


    
