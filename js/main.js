
jQuery(function($) {


	function fixDiv() {

		var offset  = $('.profile_left').height();


		var $cache = $('#iset_pback_b');
		if ($(window).scrollTop() > 375) {

			$cache.css({
				'position': 'fixed',
				'margin-top': '-303px',
                'padding-left': '246px',
                'margin-left': '80px',
                'padding-top': '0px',

                'box-shadow': '0px 1px 2px 0px #7D7D7D'

            });
            $('.arrow-up').css('margin-top', '28px');
            $('.foll_widget').css('display', 'block').fadeIn();
            $cache.fadeIn();
		}
		else {
			$cache.css({
				'position': '',
				'margin-top': '0px',
                'padding-left': '',
                'margin-left': '',
                'padding-top': '8px',
                'box-shadow':'0px 0px 0px 0px'


			});

            $('.arrow-up').css('margin-top', '35px');
            $('.foll_widget').css('display', 'none').hide();
		}



		var sets = offset/4;
		if ($(window).scrollTop() >= offset-sets ) {
			var scroll = $(window).scrollTop();
			$('.profile_left').css('position', 'fixed');
			$('.profile_left').css('margin-top', -offset+sets);



		}else{

			$('.profile_left').css('position', 'absolute');
			var auto = $('.profile_left').css('margin-top');
			$('.profile_left').css('margin-top','auto');

		}

        if ($(window).scrollTop() >= 200 ) {
            $('.ads_wp').css('position', 'fixed');
            $('.ads_wp').css('margin-top', '-300px');
            $('.trend_wp').css('position', 'fixed');
            $('.trend_wp').css('margin-top', '-300px');

        }else{

            $('.ads_wp').css('position', 'absolute');
            $('.ads_wp').css('margin-top', '-100px');
            $('.trend_wp').css('position', 'absolute');
            $('.trend_wp').css('margin-top', '-100px');
        }

	}

	$(window).scroll(fixDiv);
	fixDiv();
});

/* profile bottom page updates js*/


$(function(){

    //Posts

    $('.pback_b_op1s').click(function(){
        $('.postForm').css('display', 'block');
        $('.profilePosts').css('display', 'block');
        $('.profile_left').css('display', 'block');
        $('.arrow-up').css('margin-left', '46px');

        $('.p_photos_wrapper').css('display', 'none');
        $('.p_cv_wrapper').css('display', 'none');
        $('.p_about_wrapper').css('display', 'none');
        $('.p_projects_wrapper').css('display', 'none');




    });

    /////////About
    $('.pback_b_op2s').click(function(){
        $('.postForm').fadeOut().css('display', 'none');
        $('.profilePosts').fadeOut().css('display', 'none');
        $('.profile_left').fadeOut().css('display', 'none');
        $('.arrow-up').css('margin-left', '160px');

       /* var about_frame = "<iframe src='account_settings.php' frameborder='0' overflow-y='0' ></iframe>";
        var wp =  $('#wp').html("");
        if( $('.pback_b_op2s').hasClass('active') ){
            $('#wp').append(about_frame);
        }else{
            $('#wp').append(about_frame);
        }
        $('.pback_b_op2s').addClass('active');
        */
        $('.p_about_wrapper').remove();
        $('.p_photos_wrapper').css('display', 'none');
        $('.p_projects_wrapper').css('display', 'none');
        $('.p_cv_wrapper').css('display', 'none');








       $.post( 'about_controller/about_post.php', {username:username, user:user}, function(output){

           $('#wp').append(output);

       });





    });

    ////////////////////photos

    $('.pback_b_op3s').click(function(){
        $('.postForm').fadeOut().css('display', 'none');
        $('.profilePosts').fadeOut().css('display', 'none');
        $('.profile_left').fadeOut().css('display', 'none');
        $('.arrow-up').css('margin-left', '275px');

        $('.p_photos_wrapper').remove();
        $('.p_about_wrapper').css('display', 'none');
        $('.p_cv_wrapper').css('display', 'none');
        $('.p_projects_wrapper').css('display', 'none');




        $.post( 'photos_controller/photos_post.php', {user: user}, function(output){

            $('#wp').append(output);

        });



    });


    /////////////projects


    $('.pback_b_op4s').click(function(){
        $('.postForm').fadeOut().css('display', 'none');
        $('.profilePosts').fadeOut().css('display', 'none');
        $('.profile_left').fadeOut().css('display', 'none');
        $('.arrow-up').css('margin-left', '390px');


        $('.p_projects_wrapper').remove();

        $('.p_photos_wrapper').css('display', 'none');
        $('.p_cv_wrapper').css('display', 'none');
        $('.p_about_wrapper').css('display', 'none');


        $.post( 'project_controller/project_post.php', {}, function(output){

            $('#wp').append(output);

        });


    });

    /////cv

    $('.pback_b_op5s').click(function(){
        $('.postForm').fadeOut().css('display', 'none');
        $('.profilePosts').fadeOut().css('display', 'none');
        $('.profile_left').fadeOut().css('display', 'none');
        $('.arrow-up').css('margin-left', '500px');


        $('.p_cv_wrapper').remove();
        $('.p_projects_wrapper').css('display', 'none');
        $('.p_photos_wrapper').css('display', 'none');
        $('.p_about_wrapper').css('display', 'none');


        $.post( 'cv_controller/resume.php', {}, function(output){

            $('#wp').append(output);

        });


    });





});



/** Message model design here  **/

