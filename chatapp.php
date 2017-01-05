<?php
include_once("./inc/connect.inc.php");
?>
<?php 


if(!isset($_SESSION['user_ligin'])){
	
	$user ="";	
}else{
	
	$user = $_SESSION['user_login'];
	
}



?>
<link rel="stylesheet" type="text/css" href="css/styles.css">
<script type="text/javascript" src="js/jquery-1.9.1.min.js" ></script>
<script type="text/javascript" src="js/chat.js"  ></script>
<style type="text/css">



     
    .msg-area {.
		height: 318px;
		width: 250px;
		background-color:#f2f2f2;
		overflow-y: scroll;
		margin-bottom:36px;
	}
	.msginput {
		padding: 5px;
		margin: 10px;
		font-size: 14px;
		width: 225px;
		outline: none;
		
	}
	input[type="text"]{
		
		width: 235px;
		background-color:#FFF;
		
	}
	.bottom {
		width:250px;
		height: 35px;
		position: fixed;
		bottom: 0px;
		border-top: 1px solid #CCC;
		background-color: #EBEBEB;
	}
	#whitebg {
		width: 100%;
		height: 100%;
		background-color: #FFF;
		overflow-y: scroll;
		opacity: 0.6;
		display: none;
		position: absolute;
		top: 0px;
		z-index: 1000;
	}
	#loginbox {
		width: 600px;
		height: 350px;
		border: 1px solid #CCC;
		background-color: #FFF;
		position: fixed;
        top: 50%;
        left: 50%;
        transform: translate(-50%, -50%);
		z-index: 1001;
		display: none;
	}
	h1 {
		padding: 0px;
		margin: 20px 0px 0px 0px;
		text-align: center;
		font-weight: normal;
	}
	button {
		background-color: #43ACEC;
		border: none;
		color: #FFF;
		font-size: 16px;
		margin: 0px auto;
		width: 150px;
	}
	.buttonp {
		width: 150px;
		margin: 0px auto;
	}

	.msg {
		margin: 10px 10px;
		background-color: #E2DACC;
		
		color: #000;
		padding: 5px;
		width: auto;
		font-size: 13px;
		border-radius: 5px;
		border: 1px solid #bbaf9b;
	}
	.msgfrom {
		background-color: #A8DAB3;
		color: #000;
		margin: 5px 10px 10px 15%;
		border-radius: 5px;
		border: 1px solid #7bada1;
	}
	.msgarr {
		width: 0;
		height: 0;
		border-left: 8px solid transparent;
		border-right: 8px solid transparent;
		border-bottom: 8px solid #3489DB;
		transform: rotate(315deg);
		margin: -12px 0px 0px 45px;
	}
	.msgarrfrom {
		border-bottom: 8px solid #0084ff;
		float: right;
		margin-right: 45px;
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
    .new_chat {
    display: inline-block;
    background: #d34500;
	color: #676767;
    padding-left: 20px;
    float: right;
    margin-top: -31px;
    margin-left: 185px;
    position: absolute;
    width: 30px;
    height: 25px;
    border-radius: 0px 5px 0px 0px;
	cursor: pointer;
    }
   
  	
   .chat_op {
       width: 100px;
    height: auto;
    background-color: #FFF;
    display: none;
    position: absolute;
    z-index: 1;
    box-shadow: 0px 0px 1px 1px #D8D8D8;
    margin-top: -12px;
    float: right;
    margin-left: 140px;
    border-radius: 3px;
    }
    .chat_list li{
		
		padding: 10px;
		list-stying : none;
		cursor: pointer;
	}
	
	.chat_list li:hover{
		
	    background-color: #428aaa;
		
		
	}
	.setup {
    background: #D34500;
    color: white;
}
	
</style>

   <div class="chat_box">
   <div class="chat_head">Chats   </div><div class="new_chat"><i class="fa fa-comment fa-2x setup" ></i></div>
   <div class="chat_op">
   <ul class="chat_list">
   <li id="new_chat_list"> New Chat</li>
   
   </ul>
   </div>
   <div class="chat_body" style="display:none;">
   
  <?php
  
   $user = $_SESSION['user_login'];
   
   $query=" SELECT * FROM `message_list` WHERE `user_to` = '$user' ORDER BY `id` DESC";
   $query_run = mysqli_query($conn, $query);
   
   while ($result = mysqli_fetch_assoc($query_run)){
	   
    $body = $result['body'];
    $message_user_from = $result['user_from'];
    $message_user_to = $result['user_to'];
    $message_uid = $result['message_id'];	
    echo ' 
	    <div class="" id="active">
	    <div class="message_user_from'.$message_uid.'" id="'.$message_user_from.'"> 
		<div class="user uid'.$message_uid.'"  id="'.$message_uid.'" onclick="show_messages'.$message_uid.'()" >'.$message_user_from.'<br/>'.$body.'</div>
        </div>
		</div>
		 ';	
?>	   
<script type="text/javascript">


    

function show_messages<?php echo $message_uid; ?>(){	
   
		
	var message_user_from = $(".message_user_from<?php echo $message_uid; ?>").attr("id");
	var message_uid = $(".message_box_head").attr("p");
	
	
	
	
    
    
	$(".message_box").css("display", "block").hide().fadeIn(300);
    $(".message_wrap").css("display", "block").fadeIn(300);	
	$(".message_box_head ").html(message_user_from);
	$(".msginput").attr("id", "msginput<?php echo $message_uid; ?>");
	$(".msginput").attr("onkeydown", "if (event.keyCode == 13) sendmsg<?php echo $message_uid; ?>()");
	$(".msg-area").attr("id", "msg-area<?php echo $message_uid; ?>");
    
	clearInterval(txt);
	
	update<?php echo $message_uid; ?>();
	
	var txt = setInterval (function() { update<?php echo $message_uid; ?>()  } ,2500);
	
	
	
	
}





  
</script>

<?php	

   echo '
   
   <div class="message_box">
   <div class="message_box_head"><p></p>
   <div class="close"> X </div>
   </div>
   <div class="message_wrap">
   <div class="msg-container">
    
   <div class="msg-area" id="msg-area'.$message_uid.'"></div>
   <div class="bottom"><input type="text" name="msginput" class="msginput" id="msginput'.$message_uid.'"  onkeydown="if (event.keyCode == 13) sendmsg'.$message_uid.'()"  value="" placeholder="Enter your message here ....">

   </div>
   
   </div>
   
   </div>
   
   </div>
   
   ';
   
   
   




?> 
  
  
   
   
   

<script type="text/javascript">

   
	 
    var msginput = document.getElementById("msginput<?php echo $message_uid ; ?>");

    var msgarea = document.getElementById("msg-area<?php echo $message_uid; ?>");



    function sendmsg<?php echo $message_uid; ?>() {
		
		
	    
		
		var message_user_from = $(".message_user_from<?php echo $message_uid; ?>").attr("id");
	    var message_uid = $(".uid<?php echo $message_uid; ?>").attr("id");
        var user = "<?php echo $user; ?>"
		
		
		var message = msginput.value;
		
		if (message != "") {
			
	
	   
		// alert(msgarea.innerHTML)
		// alert(getcookie("messengerUname"))

	

		var xmlhttp=new XMLHttpRequest();

		xmlhttp.onreadystatechange=function() {
			if (xmlhttp.readyState==4 && xmlhttp.status==200) {
				
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
	
	
		
function update<?php echo $message_uid; ?>() {
	var xmlhttp=new XMLHttpRequest();
	var message_user_from = message_user_from = $(".message_user_from<?php echo $message_uid; ?>").attr("id");
	var message_uid = $(".uid<?php echo $message_uid; ?>").attr("id");
	var user = "<?php echo $user;?>"
	//alert(message_user_from);
	var output = "";
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

				msgarea.innerHTML = output;
				msgarea.scrollTop = msgarea.scrollHeight;

			}
		}
	      xmlhttp.open("GET","get-messages.php?message_user_from="+ message_user_from+"&user="+user+"&message_uid="+message_uid,true);
	      xmlhttp.send();
    }
		
		
		
		
		
	
	


</script>
<?php

}
?>

</div>
</div>
