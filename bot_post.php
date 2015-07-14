<meta charset="utf-8">
<?php 
	/* For download any file on one2up.com 
	* @Author samark chaisangun
	* @2014
	*/
	$timestart	= microtime(true);
	ini_set("memory_limit","2048M");
	set_time_limit(0);
	$env = "dev";
	$input	= array(
			'txt_Search'	=> 'เกมส์',
		);
	$url	= "http://www.one2up.com/list_content.php";

	/* input any url 
	* check your all page number
	*/
	// $urls	= "http://www.one2up.com/list_content.php?page=1&txt_Search=cia&radio_type=member_displayname";
	// $get_start_up_data	= 
	$filehtml	= curl_content($url,$input);
	// debugs($filehtml,1,1);
	$page_data	= check_pagin($filehtml);
	$stpange	= str_replace("page=2", "page=1", $page_data[0]);
	// debugs($page_data,1,1);
	$start		= "http://www.one2up.com/".$stpange;
	
	$cnts		= explode("page=", end($page_data));
	$refl		= explode("&", $cnts[1]);
	// debugs($refl,1,1);
	/*preg_match('/[0-9]{2}/',end($page_data),$number);
	if(empty($refl[0]) || !is_numeric($refl[0])) {
		die('not found data');
	}*/
	$nums	= $refl;
	$urls	= $start;
	// debugs($start,1,1); 
	// debugs($nums); exit();
	if($env ==="dev" || "") {
		define('database','log_download');
		define('hostname','localhost');
		define('fine_type','.JPG');
		define('username','root');
		define('password','');
		define('url_get',$urls);
		define('num',$nums[0]);
		define('URL_N','http://www.one2up.com/');
		
	} else{
		define('database','backhoet_pic');
		define('hostname','localhost');
		define('fine_type','.JPG');
		define('username','backhoet_pic');
		define('password','IVw58LFQ');	
		define('url_get',$urls);
		define('num',$nums[0]);
		define('URL_N','http://www.one2up.com/');
	}
	// echo num;exit();
	start();
	echo microtime(true)- $timestart;
	// define('url','');
	// define('database','');
	// define('hostname','');
	// define('password', '');
	// define('dir',"");

	function crawl_page($url, $depth = 5) {
		if($depth > 0) {
		    $html = file_get_contents($url);

		    preg_match_all('~<a.*?href="(.*?)".*?>~', $html, $matches);

		    foreach($matches[1] as $newurl) {
		        crawl_page($newurl, $depth - 1);
		    }

		    file_put_contents('results.txt', $newurl."\n\n".$html."\n\n", FILE_APPEND);
		}
	}

	function curl_content($url ="",$data=array()) {
		$ch = curl_init();
		/*$skipper = "luxury assault recreational vehicle";
		$fields = array( 'penguins'=>$skipper, 'bestpony'=>'rainbowdash');
		$postvars = '';
		foreach($fields as $key=>$value) {
			$postvars .= $key . "=" . $value . "&";
		}
		$url = "http://www.google.com";*/
		curl_setopt($ch,CURLOPT_URL,$url);
		curl_setopt($ch,CURLOPT_POST, 1);                //0 for a get request
		curl_setopt($ch,CURLOPT_POSTFIELDS,http_build_query($data));
		curl_setopt($ch,CURLOPT_RETURNTRANSFER, true);
		curl_setopt($ch,CURLOPT_CONNECTTIMEOUT ,3);
		curl_setopt($ch,CURLOPT_TIMEOUT, 20);
		// curl_setopt($ch, CURLOPT_COOKIEFILE, $cookieFile);
		// curl_setopt($ch, CURLOPT_COOKIEJAR,  $cookieFile);
		return curl_exec($ch);
		print "curl response is:" . $response;
		curl_close ($ch);
	}
	function debugs($data ='',$v=false,$e=false) {
		echo "<pre>"; print_r($data); echo "</pre>";
		if($v == true) var_dump($data);
		if($e == true) exit('debugs');
	} 
	function get_cookie($cookie="") {
		$cookie = "PHPSESSID=f8kef426celtg6adc9s4fosid0; _ga=GA1.2.1919723022.1432100145; __utma=1.1919723022.1432100145.1432811655.1432871976.11; __utmb=1.1.10.1432871976; __utmc=1; __utmz=1.1432304161.6.3.utmcsr=google|utmccn=(organic)|utmcmd=organic|utmctr=(not%20provided)";
		// debugs(explode(";",$cookie));		
		$data =array();
		foreach (explode(";",$cookie) as $key => $value) {
			$ex = explode("=",$value);
			$data[$ex[0]] = $ex[1];
		}
		debugs($data);
	}
	// get_cookie();
	// debugs(curl_content($url,$input));
	// debugs($number,1,1);

	// debugs($filehtml);
	// file_put_contents("test.html", $filehtml);
	function check_pagin($html="") {
		if(!empty($html)) {
			$pgid	= "pageLinks";
			// $title  =get_node($html,"div","title","");
			return get_elementID($html,$pgid);
		}

	}
	function get_elementID($html,$id) {
		$dom = new DOMDocument;
		@$dom->loadHTML($html);
		$stk	= array();
		foreach ($dom->getElementsByTagName('a') as $node) {	

			// $stk[] = strstr("สุดท้าย",$node->getAttribute('href')) ? $node->getAttribute('href') : "";
			if(strstr($node->getAttribute('href'),"/list_content.php?page")) {
				$stk[] = $node->getAttribute('href');
				
			}
		}
		return $stk;
		// var_dump($stk);
		echo reset($stk);
		debugs(end($stk));
		// echo 1;
	}

	$all = ceil(num/35);
	function write_log($text) {
		$file_name	= date("Y-m-d").".txt";
		$folder	= "log/".date("Ymd")."/";
		if(!is_dir($folder)) {
			mkdir($folder,0777,true);
		}
		$text	= "============================================\r\n".$text;
		// file_put_contents($folder.$file_name,$text."\r\n",FILE_APPEND);
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
	function start() {
		for($ij=1; $ij <= num ; $ij++ ){
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
				// debug($new_url);
				debug($val);
				$ss++;
				if($ss >1) {
					// var_dump($new_data);
				}
				// debug($new_data,1,1);
				$node	= get_node($new_data,"input","value","one2up.com");
				// debug($node,true); 
				// exit('xx');
				$p	= "files/".date("Ymd")."/page_".$ij."/";
				// $p	= "files/song/";
				if(!is_dir($p)) {
					mkdir($p,0777,true);
				}
				// $file = explode("/",$node);
				// debug($file,true);
				// echo $file[8]."\r\n";
				$filename = iconv('UTF-8','windows-874',$val['title']);
				// debugs($filename,1,1); die();
				$check_eng = false;
				if (!preg_match('/[ก-ฮ]/', $filename)) {
					$check_eng = true;
					
				}
				if(check_ready($filename) == false && $check_eng == false) {
					// if(copy($node,$p.$filename)) {
					// 	$status	= "success";
					// }else{
					// 	$status	= "fail";
					// }
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
		}
	}
	function debug($data= array(),$v=false,$e=false) {
		echo "<pre>"; print_r($data);echo "</pre>";
		if($v == true)var_dump($data);
		if($e == true) exit('debug');
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
		@mysql_select_db('log_download');
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
	
	function check_ready($file_name ="") {
		if(!empty($file_name)) {
			$dir = scandir("C:/poc/files/20150528/page_1/");
			$dir2 = scandir("C:/poc/files/20150528/page_2/");
			// $dir2 = scandir("C:/poc/files/20150525/page_1/");
			$check= array_merge($dir,$dir2);
			if(in_array($file_name, $check)) {
				return true;
			}else{
				return false;
			}

		}else{
			return false;
		}

	}