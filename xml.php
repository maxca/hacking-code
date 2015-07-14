<?php 
 $file = '<?xml version="1.0" encoding="UTF-8"?><response><code>200</code><description>Success</description></response>';
 $xml = json_encode(simplexml_load_string($file));
 print_r(json_decode($xml,true));