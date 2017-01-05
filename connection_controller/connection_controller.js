

    function follow_fun(username){
        var username = username;



        $.post('connection_controller/add_remove.php', {addusername : username}, function(out){

            $('.divfollow p').remove();
            $('.divfollow').append('<p class="unfollow'+username+'">Unfollow</p>');

            var not = '<p>You Followed '+ username +', now you can get latest news and updates about this person  </p>'
            $('.notification_cont').html('');
            $('.notification_cont').append(not);
            $('.notification_cont').css('display', 'block').hide().slideDown();
            setTimeout(function() { $(".notification_cont").fadeOut(2000).css('display', 'none'); }, 5000);



        });


    }

    function unfollow_fun(username){
        var username = username;


        $.post('connection_controller/add_remove.php', {username : username}, function(out){

            $('.divunfollow p').remove();
            $('.divunfollow').append('<p class="follow'+username+'">follow</p>');

            var not = '<p>You unfollowed '+ username +', now you will not get news and updates about this person  </p>'
            $('.notification_cont').html('');
            $('.notification_cont').append(not);
            $('.notification_cont').css('display', 'block').hide().slideDown();
            setTimeout(function() { $(".notification_cont").fadeOut(2000).css('display', 'none'); }, 5000);


        });


    }


    function con_popup(){

        $('.header_msg_list').css('display', 'none');



        if( $('.header_connection_ls').css('display') == 'none') {
            $('.header_connection_ls').css('display', 'block').hide().fadeIn();
        }else{
            $('.header_connection_ls').slideUp().css('display', 'none');
        }


        $.post('./connection_controller/get_follower_list.php', {username:user} ,function(out){
            $('.header_connection_ls').html("");
            $('.header_connection_ls').append(out);




        });

    }


    function deny_asf(user_from){
        var user_from = user_from;
        $.post('./connection_controller/add_follower.php',{deleterequest:user_from, accetp_follow:user_from } ,function(out){

            var not = '<p> Follower request '+ username +', has been deleted </p>'
            $('.header_connection_ls').css('display', 'none');

            $('.notification_cont').html('');
            $('.notification_cont').append(not);
            $('.notification_cont').css('display', 'block').hide().slideDown();
            setTimeout(function() { $(".notification_cont").fadeOut(2000).css('display', 'none'); }, 7000);

        });


    }

    function allow_asf(user_from){
        var user_from = user_from;
        $.post('./connection_controller/add_follower.php',{ accept_follow:user_from } ,function(out){

            var not = '<p>You accepted '+ username +' as follower , now you can get latest news and updates about this person  </p>'
            $('.header_connection_ls').css('display', 'none');
            $('.notification_cont').html('');
            $('.notification_cont').append(not);
            $('.notification_cont').css('display', 'block').hide().slideDown();
            setTimeout(function() { $(".notification_cont").fadeOut(2000).css('display', 'none'); }, 7000);


        });


    }