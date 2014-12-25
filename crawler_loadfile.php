<meta charset="utf-8">
<?php
	/* For download any file on one2up.com 
	* @Author samark chaisangun
	* @2014
	*/
	ini_set("memory_limit","2048M");
	set_time_limit(0);
	$env = "dev";
	$urls	= "http://www.one2up.com/list_content.php?page=1&txt_Search=%E0%B8%AB%E0%B8%99%E0%B8%B1%E0%B8%87&radio_type=content_Name";
	if($env ==="dev" || "") {
		define('database','test');
		define('hostname','localhost');
		define('fine_type','.JPG');
		define('username','root');
		define('password','');
		define('url_get',$urls);
		define('num',22);
		define('URL_N','http://www.one2up.com/');
		
	} else{
		define('database','backhoet_pic');
		define('hostname','localhost');
		define('fine_type','.JPG');
		define('username','backhoet_pic');
		define('password','IVw58LFQ');	
		define('url_get',$urls);
		define('num',22);
		define('URL_N','http://www.one2up.com/');
	}
	$all = ceil(num/35);
	function write_log($text) {
		$file_name	= date("Y-m-d").".txt";
		$folder	= "log/".date("Ymd")."/";
		if(!is_dir($folder)) {
			mkdir($folder,0777,true);
		}
		$text	= "============================================\r\n".$text;
		file_put_contents($folder.$file_name,$text."\r\n",FILE_APPEND);
	}
	function get_node($html,$tag,$att,$find) {
		$dom = new DOMDocument;
		@$dom->loadHTML($html);		 
		$n ="";
		$k =array();
		foreach ($dom->getElementsByTagName($tag) as $node) {			
			
			if(empty($find)) {
				$ex	= $node->getAttribute( $att );
				$chk	= strstr($ex,"<br>");
				if(!empty($chk)) {
					$ex	= str_replace(array("<b>","</b>"),"",$ex);
					$ex	= explode("<br>",$ex);
					$k[]	= $ex[0];
				
				}
				
				
				
			}else{
				$a =$node->getAttribute( $att );
				$b = strstr($a,$find);
				if(!empty($b)) {
					$n = $a;
				}
			}
		}
		if(empty($find))
		return $k;
		return $n;
	
	}
	for($ij=1; $ij < num ; $ij++ ){
		// $page	= $ij * 35;
		echo "page : ".$ij." :: \r\n";
		$n_url	= str_replace("page=1","page=".$ij,url_get);
		// echo $n_url; exit();
		$html = get_url($n_url);  
		if(empty($html)) {
			$html = get_url($html);  
		}
		
		// $s = str_replace(array('\\t','\\n','\\r','&nbsp;'),"",$html);
		// debug($html); exit();
		$s	= htmlspecialchars($html);
		// debug($s); 
		$m =  strip_tags($s);
		$title  =get_node($html,"img","title","");
		// debug($title,true);
		write_log(implode("\r\n",$title)); 
		$dom = new DOMDocument;
		@$dom->loadHTML($html);
		 // strpos("I love php, I love php too!","php");
		 $n =array();
		foreach ($dom->getElementsByTagName('a') as $node) {
			// $href	= $dom->saveHtml($node), PHP_EOL;
			// var_dump($node);
			$b =$node->getAttribute( 'href' );
			
			echo $b."<br>";
			$a	= strstr($b,"view_content");
			// echo $a;
			if(!empty($a))  {
				$n[] = $b;
			}
			
		}
		// debug($title);
		// mamp name file 
		$map_array = array();
		foreach($n as $key => $val) {
			$map_array[$key]['url']	= $val;	
			$map_array[$key]['title'] = $title[$key];	
		}
		// $n_array_up	= array_merge ($n,$title);
		// debug($map_array,true); exit();
		$ss= 1;
		foreach($map_array as $key => $val) {
			$new_url	= URL_N.$val['url'];
			$new_data = get_url($new_url);
			debug($val);
			$ss++;
			if($ss >1) {
				// var_dump($new_data);
			}
			$node	= get_node($new_data,"input","value","one2up.com");
			// debug($node,true); 
			$p	= "files/".date("Ymd")."/page_".$ij."/";
			// $p	= "files/song/";
			if(!is_dir($p)) {
				mkdir($p,0777,true);
			}
			// $file = explode("/",$node);
			// debug($file,true);
			// echo $file[8]."\r\n";
			$filename = iconv('UTF-8','windows-874',$val['title']);
			if(copy($node,$p.$filename)) {
				$status	= "success";
			}else{
				$status	= "fail";
			}
			 $status	= "fail";
			$insert_log	= array(
				'full_url'		=> $n_url,
				'link'			=> $new_url,
				'link_load'		=> $node,
				'file_name'		=> $val['title'],
				'page'			=> $ij,
				'status'		=>  $status,
			);
			insert_log($insert_log);
			
		}
		
	 

	}
	function debug($data= array(),$v=false) {
		echo "<pre>"; print_r($data);echo "</pre>";
		if($v == true)var_dump($data);
	}
	// $replace	= array($k);
	// $html	= str_replace($k,"",$html);
	 // var_dump($html);
	 // echo time();
	 // echo ucfirst('samark');
	// foreach($html as $element) {
		// print_r($element).'<br>';
	// }
	function connect_database($sql) {
		@mysql_connect(hostname,username,password) or die(mysql_error());
		@mysql_select_db(database)or die(mysql_error());
		// @mysql_db_query(database,"SET NAMES UTF8"); 
		// mysql_query("SET NAMES UTF8");
		mysql_query("SET NAMES TIS620");
		return  mysql_query($sql) or die( mysql_error());
		
	}
	function insert($data= array()) {
		foreach($data as $val ) {
			$sql ="INSERT INTO  `student_profile` VALUES (NULL ,  '".$val['id']."',  '".$val['name']."',  '".$val['fac']."',  '".$val['major']."',  '".$val['status']."');";
			connect_database($sql);
		}

		
	}
	function insert_log($val = array()) {
		@mysql_connect(hostname,username,password);
		@mysql_select_db('save_pic');
		@mysql_query("SET NAMES UTF8");
		
			$sql = "INSERT INTO  `log_download`
						VALUES (
						NULL,  '".$val['full_url']."',  '".$val['link']."',  '".$val['link_load']."',  '".$val['file_name']."',  now(),'".$val['page']."','".$val['status']."'
						);
					";
			@mysql_real_escape_string($sql);
			@mysql_query($sql);
		
		
	}
	function get_url($url= "") {
			$curl = curl_init();
	curl_setopt( $curl, CURLOPT_URL, $url );
	curl_setopt( $curl, CURLOPT_CONNECTTIMEOUT, 0 );
	curl_setopt( $curl, CURLOPT_TIMEOUT , 0 );
	curl_setopt( $curl, CURLOPT_HEADER, false );
	curl_setopt( $curl, CURLOPT_CUSTOMREQUEST, "GET" );
	curl_setopt( $curl, CURLOPT_RETURNTRANSFER, true);
	// curl_setopt( $curl, CURLOPT_BINARYTRANSFER, true); 
	return curl_exec( $curl );
	// curl_close( $curl );
	}
	