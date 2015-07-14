<?php 
//$url= curl 'https://adf.ly/shortener/shorten' -H 'Accept: */*' -H 'Accept-Encoding: gzip, deflate' -H 'Accept-Language: en-US,en;q=0.5' -H 'Content-Type: application/x-www-form-urlencoded; charset=UTF-8' -H 'Cookie: __cfduid=d6ea99b5951618a386cca279b786831361432100932; __utma=255621336.1124145123.1432100982.1432108156.1432193931.3; __utmz=255621336.1432108156.2.2.utmcsr=login.adf.ly|utmccn=(referral)|utmcmd=referral|utmcct=/login; __atuvc=5%7C20; FLYSESSID=172cd6bed279aab70a025f25a97a2fb39776d635; __utmb=255621336.2.10.1432193931; __utmc=255621336; __utmt=1; __atuvs=555d8b8a7644dac9001' -H 'Host: adf.ly' -H 'Referer: https://adf.ly/publisher' -H 'User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:38.0) Gecko/20100101 Firefox/38.0' -H 'X-Requested-With: XMLHttpRequest' --data 'url=www.kapook.com&domain=1&advert_type=1&group_id=0&custom_name=&loggedShorten=true&csrfToken=19ff9df289ce953170f162b38f5d134c&_user_id=10005681&_api_key=c26bf047714d62cdc03c0e17be776e7c';
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
function debug($data='',$v=false,$e=false){
	echo "<pre>"; print_r($data); echo "</pre>";
	if($v=== true) var_dump($data);
	if($e=== true) exit('ok');
}

$respones	 = array(
		'type'	=> 200,
		'msg'	=> 'ok',
		'descp'	=> 'get data ok',
		'url'	=> 'http://www.kapook.com',
	);
header('Content-Type:application/json');
echo json_encode($respones);