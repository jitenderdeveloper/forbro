<?php
class Sms
{
public function __construct()
{
	define('API_KEY', '65e831d47c41a');
}	
 public function auto_otp_send($mobile)
 {
 	
   $curl = curl_init();
   curl_setopt_array($curl, array(
  // CURLOPT_URL => "https://2factor.in/API/V1/f9a71c88-77c6-11e9-ade6-0200cd936042/SMS/+91".$mobile."/AUTOGEN",

   CURLOPT_URL => "http://www.smsalert.co.in/api/push.json?apikey=65e831d47c41a&route=transactional&sender=FORBRO&mobileno=+91".$mobile."&text=Your%20verification%20code%20for%20forbro%20is%202525%5Bnewline%5D%0Ahttp%3A%2F%2Fload.bz%2FPEEVw",
  CURLOPT_RETURNTRANSFER => true,
  CURLOPT_ENCODING => "",
  CURLOPT_MAXREDIRS => 10,
  CURLOPT_TIMEOUT => 30,
  CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
  CURLOPT_CUSTOMREQUEST => "GET",
  CURLOPT_POSTFIELDS => "",
  CURLOPT_HTTPHEADER => array(
    "content-type: application/x-www-form-urlencoded"
  ),
));



$response = curl_exec($curl);
$err = curl_error($curl);

curl_close($curl);

if ($err) {
  return "cURL Error #:" . $err;
} else {
  return  $response;
}
}
public function varify_otp($session_val , $otp)
 {
 	$curl = curl_init();
   curl_setopt_array($curl, array(
  CURLOPT_URL => "https://2factor.in/API/V1/".API_KEY."/SMS/VERIFY/".$session_val."/$otp",
  CURLOPT_RETURNTRANSFER => true,
  CURLOPT_ENCODING => "",
  CURLOPT_MAXREDIRS => 10,
  CURLOPT_TIMEOUT => 30,
  CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
  CURLOPT_CUSTOMREQUEST => "GET",
  CURLOPT_POSTFIELDS => "",
  CURLOPT_HTTPHEADER => array(
    "content-type: application/x-www-form-urlencoded"
  ),
));

$response = curl_exec($curl);
$err = curl_error($curl);

curl_close($curl);

if ($err) {
  return "cURL Error #:" . $err;
} else {
  return  $response;
}
}
public function prmotional_sms()
{
	$arr= array
	(
'From'=>'TFCTOR',
'Msg'=>'Hello',
'To'=>'9897562619'
	);
	$curl = curl_init();

curl_setopt_array($curl, array(
  CURLOPT_URL => "http://2factor.in/API/V1/f9a71c88-77c6-11e9-ade6-0200cd936042/ADDON_SERVICES/BAL/PROMOTIONAL_SMS",
  CURLOPT_RETURNTRANSFER => true,
  CURLOPT_ENCODING => "",
  CURLOPT_MAXREDIRS => 10,
  CURLOPT_TIMEOUT => 30,
  CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
  CURLOPT_CUSTOMREQUEST => "POST",
  CURLOPT_POSTFIELDS =>json_encode($arr),
));

$response = curl_exec($curl);
$err = curl_error($curl);

curl_close($curl);

if ($err) {
  echo "cURL Error #:" . $err;
} else {
  echo $response;
}
}


/*====================== Transactional SMS ================ */

public function transactional_sms($from , $to , $temp_name , $var1 , $var2 , $var3 , $var4 , $var5)
{
  $curl = curl_init();

curl_setopt_array($curl, array(
  CURLOPT_URL => "http://2factor.in/API/V1/f9a71c88-77c6-11e9-ade6-0200cd936042/ADDON_SERVICES/SEND/TSMS",
  CURLOPT_RETURNTRANSFER => true,
  CURLOPT_ENCODING => "",
  CURLOPT_MAXREDIRS => 10,
  CURLOPT_TIMEOUT => 30,
  CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
  CURLOPT_CUSTOMREQUEST => "POST",
  CURLOPT_POSTFIELDS => "From=$from&To=$to&TemplateName=$temp_name&VAR1=$var1&VAR2=$var2&VAR3=$var3&VAR4=$var4&VAR5=$var5",
));

$response = curl_exec($curl);
$err = curl_error($curl);

curl_close($curl);

if ($err) {
  return  "cURL Error #:" . $err;
} 
else 
{
  return $response;
}
}
}