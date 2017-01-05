<?php
if(isset($_POST))
{
    $Destination = 'uploads';
    if(!isset($_FILES['ImageFile']) || !is_uploaded_file($_FILES['ImageFile']['tmp_name']))
    {
        die('Something went wrong with Upload!');
    }

    $RandomNum   = rand(0, 9999999999);

    $ImageName      = str_replace(' ','-',strtolower($_FILES['ImageFile']['name']));
    $ImageType      = $_FILES['ImageFile']['type']; //"image/png", image/jpeg etc.

    $ImageExt = substr($ImageName, strrpos($ImageName, '.'));
    $ImageExt = str_replace('.','',$ImageExt);

    $ImageName      = preg_replace("/\.[^.\s]{3,4}$/", "", $ImageName);

    //Create new image name (with random number added).
    $NewImageName = $ImageName.'-'.$RandomNum.'.'.$ImageExt;
	
	$ffmpeg= "C:\\ffmpeg\\bin\\ffmpeg.exe";
	
    $vedio_url = $_FILES['ImageFile']['tmp_name'];
	$imageFile = "1.jpg";
	$size = "500x250";
	$getFromSecond = 5;
	
	$cmd = "ffmpeg -i $vedio_url -deinterlace -an -ss 1 -t 00:00:10 -r 1 -y -vcodec mjpeg -f mjpeg -s $size $imageFile 2>&1";
	
	if(shell_exec($cmd)){
		
		echo $ImageFile;
	}else{
		
		echo 'Error';
	}
	
	

    move_uploaded_file($_FILES['ImageFile']['tmp_name'], "$Destination/$NewImageName");
    echo '<table width="100%" border="0" cellpadding="4" cellspacing="0">';
    echo '<tr>';
    echo '<td align="center"><img src="uploads/'.$NewImageName.'"></td>';
    echo '</tr>';
    echo '</table>';
}
?>