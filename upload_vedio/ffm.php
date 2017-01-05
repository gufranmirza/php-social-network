<?php

	   
	   
	   
	   
	   
	$ffmpeg= "C:\\ffmpeg\\bin\\ffmpeg.exe";
	
    $vedio_url = "uploads/1.mp4";
	$imageFile = "1.jpg";
	$size = "500x250";
	$getFromSecond = 5;
	
	$cmd = "ffmpeg -i $vedio_url -deinterlace -an -ss 1 -t 00:00:01 -r 1 -y -vcodec mjpeg -f mjpeg -s $size $imageFile 2>&1";
	
	if(shell_exec($cmd)){
		
		echo $imageFile;
	}else{
		
		echo 'Error';
	}
	   
?>







<!DOCTYPE html>
<html>
<head>

</head>
<body>
<h2>HTML5 File Upload Progress Bar Tutorial</h2>

</body>
</html>