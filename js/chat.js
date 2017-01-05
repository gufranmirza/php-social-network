$(document).ready(function(){

 $('.chat_head').click(function(){
	 
	 $('.chat_body').slideToggle();
	 $(".chat_op").css("display", "none");	
 });
 $('.message_box_head').click(function(){
	 
	 $('.message_wrap').slideToggle();
	  $(".chat_op").css("display", "none");
 });
 
 $('.close').click(function(){
	 
	 $('.message_box').fadeOut();
 });
 
 $(".new_chat").click(function(){
		
		
		$(".chat_op").slideToggle(100);	
		$('.chat_body').css("display","block").hide().fadeIn(500);
		
	})
 
 
 
 $('textarea').keypress(function(enter){
	 
	 if(enter.keyCode == 13){
		 
		var message = $(this).val();
		$(this).val("");
		$("<div class='message_b'>"+message+"</div>").insertBefore(".enter").hide().fadeIn(500);
		$(".message_body").scrollTop($(".message_body").prop("scrollHeight"));
	
		
		
		 
	 }
	 
 });
 
 
 $("#new_chat_list").click(function(){
	 
	var body = $(".chat_body").html();
	$(".chat_op").css("display", "none");	
	
	$.get("new_chat_list.php", function(data){
		
		
		$(".chat_body").html(data);
		
		$(".chat_head").click(function(){
			
			 $('.chat_body').css("display", "block");
			$(".chat_body").html(body);
			
		});
		
		
	});
	
});

});



