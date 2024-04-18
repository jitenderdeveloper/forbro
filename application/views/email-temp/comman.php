<!DOCTYPE html>
<html lang="en">
<head>
    <title>Vihu Store</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <meta name="description" content="big-deal">
    <meta name="keywords" content="big-deal">
    <meta name="author" content="big-deal">
    <link rel="icon" href="<?= base_url();?>assets/images/favicon/favicon.ico" type="image/x-icon">
    <link rel="shortcut icon" href="<?= base_url();?>assets/images/favicon/favicon.ico" type="image/x-icon">

    <!--Google font-->
    <link href="https://fonts.googleapis.com/css?family=PT+Sans:400,700&display=swap" rel="stylesheet">

    <style type="text/css">
        body{
            text-align: center;
            margin: 0 auto;
            width: 650px;
            font-family: 'Lato', sans-serif;
            background-color: #e2e2e2;
            display: block;
        }
        ul{
            margin:0;
            padding: 0;
        }
        li{
            display: inline-block;
            text-decoration: unset;
        }
        a{
            text-decoration: none;
        }
        h5{
            margin:10px;
            color:#777;
        }
        .text-center{
            text-align: center
        }
        .main-bg-light{
            background-color: #fafafa;
        }
        .title{
            color: #444444;
            font-size: 22px;
            font-weight: bold;
            margin-top: 0px;
            margin-bottom: 10px;
            padding-bottom: 0;
            text-transform: uppercase;
            display: inline-block;
            line-height: 1;
        }
        .menu{
            width:100%;
        }
        .menu li a{
            text-transform: capitalize;
            color:#444;
            font-size:16px;
            margin-right:15px
        }
        .main-logo{
            width: 180px;
            padding: 10px 20px;
            margin-bottom: -5px;
        }
        .product-box .product {
            text-align: center;
            position: relative;
        }
        .product-info {
            margin-top: 15px;
        }
        .product-info h6 {
            line-height: 1;
            margin-bottom: 0;
            padding-bottom: 5px;
            font-size: 14px;
            font-family: "Open Sans", sans-serif;
            color: #777;
            margin-top: 0;
        }
        .product-info h4 {
            font-size: 16px;
            color: #444;
            font-weight: 700;
            margin-bottom: 0;
            margin-top: 5px;
            padding-bottom: 5px;
            line-height: 1;
        }
        .footer-social-icon tr td img{
            margin-left:5px;
            margin-right:5px;
        }
    </style>
</head>
<body style="margin: 20px auto; background-color=#f8f9fa;" >
<table align="center" border="0" cellpadding="0" cellspacing="0" style="background-color: #fff; -webkit-box-shadow: 0px 0px 14px -4px rgba(0, 0, 0, 0.2705882353);box-shadow: 0px 0px 14px -4px rgba(0, 0, 0, 0.2705882353);">
    <tbody>
    <tr>
        <td>
            <table align="center" border="0" cellpadding="0" cellspacing="0" width="100%">
                <tr class="header" style="background-color:t;">
                    <td align="center" valign="top" colspan="2" >
                        <img src="<?= base_url();?>assets/images/layout-1/logo/logo.png" class="main-logo">
                    </td>
                    
                </tr>
            </table>
            <hr>
            <br/><br/>
            <table class="slider" align="center" border="0" cellpadding="0" cellspacing="0" width="100%">
                <tr>
                <?= $msg;?>
                </tr>
            </table>
            
          
            <table class="main-bg-light text-center"  align="center" border="0" cellpadding="0" cellspacing="0" width="100%" style="margin-top:30px;">
                <tr>
                    <td style="padding: 30px;">
                        <div>
                            <h4 class="title" style="margin:0">Follow us</h4>
                        </div>
                        <table border="0" cellpadding="0" cellspacing="0" class="footer-social-icon" align="center" class="text-center" style="margin-top:20px;">
                            <tr>
                                <td>
                                    <a href="#"><img src="<?= base_url();?>assets/images/email-temp/facebook.png" alt=""></a>
                                </td>
                                <td>
                                    <a href="#"><img src="<?= base_url();?>assets/images/email-temp/youtube.png" alt=""></a>
                                </td>
                                <td>
                                    <a href="#"><img src="<?= base_url();?>assets/images/email-temp/twitter.png" alt=""></a>
                                </td>
                                <td>
                                    <a href="#"><img src="<?= base_url();?>assets/images/email-temp/gplus.png" alt=""></a>
                                </td>
                                <td>
                                    <a href="#"><img src="<?= base_url();?>assets/images/email-temp/linkedin.png" alt=""></a>
                                </td>
                                <td>
                                    <a href="#"><img src="<?= base_url();?>assets/images/email-temp/pinterest.png" alt=""></a>
                                </td>
                            </tr>
                        </table>
                        <div style="border-top: 1px solid #ddd; margin: 20px auto 0;"></div>
                        <table  border="0" cellpadding="0" cellspacing="0" width="100%" style="margin: 20px auto 0;" >
                            <tr>
                                <td>
                                    <a href="#" style="font-size:13px">Want to change how you receive these emails?</a>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <p style="font-size:13px; margin:0;">2018 - 19 Copy Right by Themeforest powerd by Pixel Strap</p>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <a href="#" style="font-size:13px; margin:0;text-decoration: underline;">Unsubscribe</a>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
    </tbody>
</table>
</body>
</html>
