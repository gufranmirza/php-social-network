<?php
$fileName = $_FILES["file1"]["name"]; // The file name
$fileTmpLoc = $_FILES["file1"]["tmp_name"]; // File in the PHP tmp folder
$fileType = $_FILES["file1"]["type"]; // The type of file it is
$fileSize = $_FILES["file1"]["size"]; // File size in bytes
$fileErrorMsg = $_FILES["file1"]["error"]; // 0 for false... and 1 for true



$ffmpeg= "C:\\ffmpeg\\bin\\ffmpeg.exe";
	
	echo $fileName;
	echo '/';
	
    $vedio_url = $fileTmpLoc;
	$imageFile = "1.jpg";
	$size = "400x300";
	$getFromSecond = 5;
	
	$cmd = "ffmpeg -i $vedio_url -deinterlace -an -ss 1 -t 00:01:00 -r 1 -y -vcodec mjpeg -f mjpeg -s $size $imageFile 2>&1";
	
	if(shell_exec($cmd)){
		
		echo $imageFile;
		echo '/';
		
	}else{
		
		echo 'Error';
	}
if (!$fileTmpLoc) { // if file not chosen
    echo "ERROR: Please browse for a file before clicking the upload button.";
    exit();
}

   $str = "abcdefghijktmnopqrstuvwxyz0123456789";
   $fileName  = rand(1,10000000000000);
   $path = $fileName.'.mp4';
  
if(move_uploaded_file($fileTmpLoc,$path)){
    //echo "$fileName upload is complete";
	   echo $path;
} else {
   // echo "move_uploaded_file function failed";
}




?>