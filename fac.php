<?php 
		/*
		*  Author Samark Chaisanguan
		*  For calculate all summary of event like simple space
		* ex. input  abc output:- (a,b,c) , (a,c,b) (b,a,c) ,(b,c,a) (c,a,b), (c,b,a) 
		* Ran only  command line 
		*/
		$arg	= $argv[1];
		$get	= str_split($arg,1);
		// debug($get);
		$cnt	= count($get);
		if($cnt ==1)  echo $get[0];//debug($get,false,true);
		for($i=0;$i<$cnt ;$i++) {
			// $segment	= $get[$i];
			// unset($get[$i]);
			// $get[$cnt-1]	= $segment;
	
			
			if($i== 0) {
				// echo 'x';
				// concate_string($get[$i],$get);
			}else{
			$m=0;
				while($m <=$cnt-1 ) {
					$shift	= array_shift($get);		
					$push	= array_push($get,$shift);
					concate_string($get[$i],$get); 
					$m ++;
				}
				// debug($get);
			}		
		}
		function concate_string($start,$array=array()) {
			if(($key = array_search($start, $array)) !== false) {
				unset($array[$key]);
				$j= '';
				$k=1;
				$cnt	 = count($array);
				$fac	= array();
				foreach($array as $key => $val) {
					
					if($k==1) {
						$j	.= $start.",".$val;
					}else{
						$j	.= ",".$val;
					}				
						
					++$k;
					// echo "K:".$k."\r\n";
					
				}
				echo trim($j)."\r\n";
			}
		}
		function debug($data=array(),$v=false,$e=false) {
			echo "<pre>"; print_r($data); echo "</pre>";
			if($v== true) var_dump($data);
			if($e==true) exit('woow');
		}
		

?>