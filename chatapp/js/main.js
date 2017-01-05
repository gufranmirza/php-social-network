$(document).ready(function(){

 $('.chat_head').click(function(){
	 
	 $('.chat_body').slideToggle();
 });
 $('.message_box_head').click(function(){
	 
	 $('.message_wrap').slideToggle();
 });
 
 $('.close').click(function(){
	 
	 $('.message_box').fadeOut();
 });
 
 $('.user').click(function(){
	 
	 $('.message_box').fadeIn();
	 $('.message_wrap').fadeIn();
 });
 
 $('textarea').keypress(function(enter){
	 
	 if(enter.keyCode == 13){
		 
		var message = $(this).val();
		$(this).val("");
		$("<div class='message_b'>"+message+"</div>").insertBefore(".enter").hide().fadeIn(500);
		$(".message_body").scrollTop($(".message_body").prop("scrollHeight"));
	
		
		
		 
	 }
	 
 });
 
 
});