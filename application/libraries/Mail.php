<?php
class Mail
{
	private $CI;
	public function __construct()
	{
       $this->CI = & get_instance();
       require_once APPPATH."third_party/PHPMailer/PHPMailerAutoload.php";
    }
    public function send_mail($email , $subject , $message , $name)
    {


$mail = new PHPMailer;

//Enable SMTP debugging. 
$mail->SMTPDebug = 0;                               
//Set PHPMailer to use SMTP.
$mail->isSMTP();            
//Set SMTP host name                          
$mail->Host = "mail.pits.in";
//Set this to true if SMTP host requires authentication to send email
$mail->SMTPAuth = true;                          
//Provide username and password     
$mail->Username = "ajay@piousitservices.com";                 
$mail->Password = "ajay@!@#$%^";                           
//If SMTP requires TLS encryption then set it
$mail->SMTPSecure = "tls";                           
//Set TCP port to connect to 
$mail->Port = 587;                                   

$mail->From = "azharmohd1996@gmail.com";
$mail->FromName = "Vihu-Store";

$mail->addAddress($email, $name);

$mail->isHTML(true);

$mail->Subject = $subject;
$mail->Body = $message;
if(!$mail->send()) 
{
    echo "Mailer Error: " . $mail->ErrorInfo;
} 
else 
{
   return 1;
}
    }
}