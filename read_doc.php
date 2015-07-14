 <?php 
 	$dir	= "C:/Users/Samark/Desktop/DocLaravel/";
 	$file = scandir($dir);
 	foreach ($file as $key => $value) {
 		if(!in_array($value, array(".","..")) && !is_dir($dir.$value)) {
	 		$readtext = file_get_contents($dir.$value);
	 		$data	= array(
	 				'title'	=> $value,
	 				'detail'	=> mysql_real_escape_string($readtext),
	 			);
	 		$check_exists	= check_exists($value);
	 		// debug($check_exists,1,1);
	 		if(!empty($check_exists)) {
	 			/* update */
	 			updatebook($check_exists['id'],mysql_real_escape_string($readtext));
	 		}else{
	 			savedata($data);
	 		}
		}
 	}

 	function savedata($data= array()){
 		mysql_connect('localhost','root','') or die(mysql_error());
 		mysql_select_db('readbook') or die(mysql_error());
 		mysql_query("SET NAMES UTF8");
 		$title	= $data['title'];
 		$detail	= $data['detail'];
 		// $query	= "insert into book value(0,{$title},{$detail},now())";
 		$sql	= "INSERT INTO `readbook`.`book` (`id`, `title`, `detail`, `create_date`) VALUES (NULL, '{$title}', '{$detail}', CURRENT_TIMESTAMP);";
 		$excute	= mysql_query($sql) or die(mysql_error());
 		echo "Title: ".$title."\r\n";
 	}
 	function check_exists($value='')
 	{
 		mysql_connect('localhost','root','') or die(mysql_error());
 		mysql_select_db('readbook') or die(mysql_error());
 		mysql_query("SET NAMES UTF8");
 		$sql	 ="select * from book where title ='{$value}'";
 		echo "\r\n";
 		echo $sql;
 		$excute	= mysql_query($sql) or die(mysql_error());
 		if($excute) {
 			if(mysql_num_rows($excute) <>0) {
 				return mysql_fetch_assoc($excute);
 			}else{
 				return false;
 			}
 			
 		}else{
 			exit('fail');
 		}

 	}
 	function updatebook($id=0,$detail="")
 	{
 		mysql_connect('localhost','root','') or die(mysql_error());
 		mysql_select_db('readbook') or die(mysql_error());
 		mysql_query("SET NAMES UTF8");
 		$sql	= "update book set detail ='{$detail}' where id={$id} ";

 		// exit($sql);
 		$excute	= mysql_query($sql) or die(mysql_error());
 		if ($excute) {
 			return true;
 		}else{
 			return false;
 		}
 		
 	}
 	function debug($value,$v=false,$e=false)
 	{
 		echo "<pre>"; print_r($value); echo "</pre>"; 
 		if($v == true) var_dump($value);
 		if($e == true) exit('bugs');
 	}

