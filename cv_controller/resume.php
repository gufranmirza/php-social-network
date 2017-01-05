<?php
    include_once("../inc/connect.inc.php"); 

	session_start();
	$user = $_SESSION['user_login'];


?>





<head>
  
     <style type="text/css">
       
      
        #page-wrap { width: 800px; margin: 40px auto 60px; }
        #pic { float: right; margin: -30px 0 0 0; width:200px; height: 200px; border-radius: 50%; border: 2px solid #428bca; box-shadow: 0 0 5px 0 #222;}
       
       
      
        #objective { width: 500px; float: left; }
        #objective p { font-family: Georgia, Serif; font-style: italic; color: #666; }
        dt { font-style: italic; font-weight: bold; font-size: 18px; text-align: right; padding: 0 26px 0 0; width: 150px; float: left; height: 100px; border-right: 1px solid #999;  }
        dd { width: 600px; float: right; }
        dd.clear { float: none; margin: 0; height: 15px; }
		
		.tel{ color: #428bca; font-size:15px;}
		.email{ color: #428bca; font-size:15px; text-decoration: none; }
     </style>
</head>

<body>

	
	
	<?php
	
   $about = "SELECT `bio`, `profile_pic` FROM `users` WHERE `username` = '$user'";
   $run = mysqli_query($conn, $about);
   $result = mysqli_fetch_assoc($run);
   $show = $result['bio'];
   $pic = $result['profile_pic'];
   $profile_pic = 'userdata/profile_pics/'.$pic;

   $query = "SELECT * FROM `resume_data` WHERE `username`= '$user'";
   $query_run = mysqli_query($conn, $query); 
   $get = mysqli_fetch_assoc($query_run);
   $intro =$get['intro']; 
   $countrey = $get['countrey'];  
   $email_id =$get['email_id'];
   $mobile =$get['mobile'];   
	?>
	
	
	
    <div class="p_cv_wrapper">

    

    <div id="page-wrap">
        <img src="<?php echo $profile_pic;?>" alt="<?php echo $user."'s photo" ;?>" id="pic" />
    
        <div id="contact-info" class="vcard">
        
            <!-- Microformats! -->
        
            <h1 class="fn"><?php echo $user."'s resume"?></h1>
			<h3>From: <?php echo $countrey; ?></h3>
			
			<br/>
			
        
            <p>
                Cell: <span class="tel"><?php echo $mobile;?></span><br />
                Email: <a class="email" href="<?php echo $email_id;?>"><?php echo $email_id;?></a>
            </p>
        </div>
                
        <div id="objective">
            <p>
                <?php echo $intro; ?>
            </p>	
		
		</div>
        
       
        
		<dl>
            <dd class="clear"></dd>
            
            <dt>Education</dt>
            <dd>
                <h2>Withering Madness University - Planet Vhoorl</h2>
                <p><strong>Major:</strong> Public Relations<br />
                   <strong>Minor:</strong> Scale Tending</p>
            </dd>
            
            <dd class="clear"></dd>
            
            <dt>Skills</dt>
            <dd>
                <h2>Office skills</h2>
                <p>Office and records management, database administration, event organization, customer support, travel coordination</p>
                
                <h2>Computer skills</h2>
                <p>Microsoft productivity software (Word, Excel, etc), Adobe Creative Suite, Windows</p>
            </dd>
            
            <dd class="clear"></dd>
            
            <dt>Experience</dt>
            <dd>
                <h2>Doomsday Cult <span>Leader/Overlord - Baton Rogue, LA - 1926-2010</span></h2>
                <ul>
                    <li>Inspired and won highest peasant death competition among servants</li>
                    <li>Helped coordinate managers to grow cult following</li>
                    <li>Provided untimely deaths to all who opposed</li>
                </ul>
                
                <h2>The Watering Hole <span>Bartender/Server - Milwaukee, WI - 2009</span></h2>
                <ul>
                    <li>Worked on grass-roots promotional campaigns</li>
                    <li>Reduced theft and property damage percentages</li>
                    <li>Janitorial work, Laundry</li>
                </ul> 
            </dd>
            
            <dd class="clear"></dd>
            
            <dt>Hobbies</dt>
            <dd>World Domination, Deep Sea Diving, Murder Most Foul</dd>
            
            <dd class="clear"></dd>
            
            <dt>References</dt>
            <dd>Available on request</dd>
            
            <dd class="clear"></dd>
        </dl>
        
      
    
    </div>
	</div>

</body>

</html>