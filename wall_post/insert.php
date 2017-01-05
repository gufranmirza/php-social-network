<?php
function time_elapsed_string($ptime)
{
    $etime = time() - $ptime;

    if ($etime >= 0 & $etime <=60)
    {
        return 'Just now';
    }	
		

    $a = array( 365 * 24 * 60 * 60  =>  'year',
                 30 * 24 * 60 * 60  =>  'month',
                      24 * 60 * 60  =>  'day',
                           60 * 60  =>  'hour',
                                60  =>  'minute',
                                 1  =>  'second'
                );
    $a_plural = array( 'year'   => 'years',
                       'month'  => 'months',
                       'day'    => 'days',
                       'hour'   => 'hours',
                       'minute' => 'minutes',
                       'second' => 'seconds'
                );

    foreach ($a as $secs => $str)
    {
        $d = $etime / $secs;
        if ($d >= 1)
        {
            $r = round($d);
            return $r . ' ' . ($r > 1 ? $a_plural[$str] : $str) . ' ago';
        }
    }
}
?>

<?php
	
	
	
	$conn = mysqli_connect("localhost", "root","", "findfriends") or die("Cant connect");
	$site_title = $_POST['sitetitle'];
	$site_url = $_POST['siteurl'];
	$site_disc = $_POST['sitedesc'];
	
	if(isset($_POST['site_img_url'])){
	$site_img_url = $_POST['site_img_url'];
	}else{
	$site_img_url = '';	
	}
	
	$textarea_content = $_POST['textarea_content'];
	$vedio_url =  '';
	$user = $_POST['user'];
	$username = $_POST['username'];
	$date = date("l jS \of F Y h:i:s A");
	$time = time();
	
 

if(preg_match('/http:\/\/www\.youtube\.com\/watch\?v=[^&]+/', $site_url, $site)) {
           
		   $vedio_url = $site_url;		 
		   
      } elseif(preg_match('/http:\/\/(.*?)blip\.tv\/file\/[0-9]+/', $site_url, $site)) {

           $vedio_url = $site_url;

      } elseif(preg_match('/http:\/\/(.*?)break\.com\/(.*?)\/(.*?)\.html/', $site_url, $site)) {

		 $vedio_url = $site_url;

      } elseif(preg_match('/http:\/\/www\.metacafe\.com\/watch\/(.*?)\/(.*?)\//', $site_url, $site)) {

	      $vedio_url = $site_url;

      } elseif(preg_match('/http:\/\/video\.google\.com\/videoplay\?docid=[^&]+/', $site_url, $site)) {

		 $vedio_url = $site_url;

      } elseif(preg_match('/http:\/\/www\.dailymotion\.com\/video\/+/', $site_url, $site)) {

	     $vedio_url = $site_url;

      }elseif(preg_match('/http:\/\/www\.youtu.be\.com\/watch\?v=[^&]+/', $site_url, $site)) {

		 $vedio_url = $site_url;

      }elseif(preg_match('/https:\/\/www\.youtube\.com\/watch\?v=[^&]+/', $site_url, $site)) {
		  
		  
        preg_match('/[\\?\\&]v=([^\\?\\&]+)/', $site_url, $matches);
        $id = $matches[1];
   	  		
	    $vedio_url = "https://www.youtube.com/embed/$id";
		  
      } elseif(preg_match('/https:\/\/(.*?)blip\.tv\/file\/[0-9]+/', $site_url, $site)) {


		 $vedio_url = $site_url;

      } elseif(preg_match('/https:\/\/(.*?)break\.com\/(.*?)\/(.*?)\.html/', $site_url, $site)) {

		 $vedio_url = $site_url;

      } elseif(preg_match('/https:\/\/www\.metacafe\.com\/watch\/(.*?)\/(.*?)\//', $site_url, $site)) {

		 $vedio_url = $site_url;

      } elseif(preg_match('/https:\/\/video\.google\.com\/videoplay\?docid=[^&]+/', $site_url, $site)) {

		 $vedio_url = $site_url;

      } elseif(preg_match('/https:\/\/www\.dailymotion\.com\/video\/+/', $site_url, $site)) {

		 $vedio_url = $site_url;

      }elseif(preg_match('/https:\/\/www\.youtu.be\.com\/watch\?v=[^&]+/', $site_url, $site)) {

		 $vedio_url = $site_url;

      }else{
		  
		 $vedio_url = '';
		  
	  }
	  
	  $query = "INSERT INTO `new_post`(`id`, `site_title`, `site_url`, `site_disc`, `site_img_url`, `text_area`,`vedio_url` , `added_by`, `added_to`, `date_added`, `time` , `deleted`) VALUES ('','$site_title','$site_url','$site_disc','$site_img_url','$textarea_content','$vedio_url','$username', '$user', '$date', '$time', '0')";
      $query_run = mysqli_query($conn, $query);
	  
	  
	  
	   
    $query1 = "SELECT * FROM `new_post` WHERE `site_title` ='$site_title' && `site_disc` = '$site_disc' && `site_img_url`= '$site_img_url'";
	$query_run1 = mysqli_query($conn, $query1);
	$result = mysqli_fetch_assoc($query_run1);
	
    $post_id = $result['id'];
	$site_title = $result['site_title'];
	$site_disc = $result['site_disc'];
	$site_img_url = $result['site_img_url'];
	$site_url = $result['site_url'];
	$textarea_content = $result['text_area'];
	$vedio_url1 = $result['vedio_url'];
	$time_est = $result['time'];
	$added_by = $result['added_by'];
	$get_est_time = time_elapsed_string($time_est);
	
	
	
	
   $query1 = "SELECT * FROM `users` WHERE  `username` = '$added_by' ORDER BY `id` DESC LIMIT 10";
   $query_run1 = mysqli_query($conn, $query1);
   $row1 = mysqli_fetch_assoc($query_run1);
   // $id = $row1['id'];
   $posted_by_pic = $row1['profile_pic'];
	
	
	echo $site_title;
	echo '///';
	echo $site_disc;
	echo '///';
	echo $site_img_url;
	echo '///';
	echo $vedio_url;
	echo '///';
	echo $get_est_time;
	echo '///';
	echo $posted_by_pic;
	echo '///';
	echo $added_by;
	echo '///';
	echo $textarea_content;
	echo '///';
	echo $site_url;
	echo '///';
	echo $post_id;
?>