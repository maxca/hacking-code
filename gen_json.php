<?php 
/*"allow_type_pre": "1",
     *           "allow_type_post": "1",
     *           "allow_category_1": "1",
     *           "allow_category_2": "1",
     *           "allow_category_3": "1",
     *           "allow_category_4": "1",
     *           "allow_category_5": "1",
*/
	$data 	= array(
			'js_allow_type'	=> array(
					'allow_type_pre'	=> '1',
					'allow_type_post'	=> '1',
				)
		);
	file_put_contents('json_type.txt',json_encode($data));
	$json_2 = array(
			'js_allow_category'	=> array(
					"allow_category_1"=> "1",
                "allow_category_2"=> "1",
                "allow_category_3"=> "1",
                "allow_category_4"=> "1",
               "allow_category_5"=> "1",
				)
		);
	file_put_contents('json_cate.txt',json_encode($json_2));