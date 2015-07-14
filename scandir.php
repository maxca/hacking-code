<?php 
	$dir = scandir("C:/poc/files/20150521/page_1/");
	debug($dir);
	file_put_contents("text.txt",print_r($dir,true));
	function debug($data){
		echo "<pre>"; print_r($data); echo "</pre>";
	}