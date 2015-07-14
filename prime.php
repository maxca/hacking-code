<?php 
	for ($i=1; $i <10 ; $i++) { 
		if( ( 1%$i) == 1 || ($i%1) == $i) {
			echo "p :".$i."\r\n";
		}else{
			echo $i."\r\n";
		}
	}