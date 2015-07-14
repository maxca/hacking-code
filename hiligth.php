<?php 

/*	$"hilight_voice": "1",
                "hilight_data": "1",
                "hilight_wifi": "1",
                "hilight_sms": "1",
                "hilight_mms": "1",
                "hilight_tv_anywhere": "1",
                "hilight_truecard": "1",
*/
    $data = array(
    		'hilight_voice'	=> '1',
    		'hilight_data'	=> '1',
    		'hilight_wifi'	=> '1',
    		'hilight_sms'	=> '1',
    		'hilight_mms'	=> '1',
    		'hilight_tv_anywhere'	=> '1',
    		'hilight_truecard'	=> '1'
    	);

file_put_contents('hilight_file.txt',json_encode($data));

$data2 = array(
"tag_voice_th" => "1",
                "tag_data_th"=> "1",
                "tag_wifi_th"=> "1",
                "tag_sms_th"=> "1",
                "tag_mms_th"=> "1",
                "tag_tv_anywhere_th"=> "1",
                "tag_tv_truecard_th"=> "1");

file_put_contents('data2.txt',json_encode($data2));
$data3 =array (

                "tag_voice_en"=> "1",
                "tag_data_en"=> "1",
                "tag_wifi_en"=> "1",
                "tag_sms_en"=> "1",
                "tag_mms_en"=> "1",
                "tag_tv_anywhere_en"=> "1",
                "tag_tv_truecard_en"=> "1"
                );

file_put_contents('data3.txt',json_encode($data3));