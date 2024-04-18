<?php
$sess = $this->session->userdata('userSess');
?>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>forbro</title>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width,initial-scale=1">
  <meta name="description" content="big-deal">
  <meta name="keywords" content="big-deal">
  <meta name="author" content="big-deal">
  <meta name="p:domain_verify" content="d8fee5aeb5b153068c9dae418b47182c"/>
  <link rel="icon" href="<?= base_url();?>assets/images/favicon/favicon.png" type="image/png">
  <link rel="shortcut icon" href="<?= base_url();?>assets/images/favicon/favicon.png" type="image/png">

  <!--Google font-->
  <link href="https://fonts.googleapis.com/css?family=PT+Sans:400,700&display=swap" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css?family=Raleway&display=swap" rel="stylesheet">

  <!--icon css-->
  <link rel="stylesheet" type="text/css" href="<?= base_url();?>assets/css/font-awesome.css">
  <link rel="stylesheet" type="text/css" href="<?= base_url();?>assets/css/themify.css">

  <!--Slick slider css-->
  <link rel="stylesheet" type="text/css" href="<?= base_url();?>assets/css/slick.css">
  <link rel="stylesheet" type="text/css" href="<?= base_url();?>assets/css/slick-theme.css">

  <!--Animate css-->
  <link rel="stylesheet" type="text/css" href="<?= base_url();?>assets/css/animate.css">
  <!-- Bootstrap css 
  <link rel="stylesheet" type="text/css" href="<?= base_url();?>assets/css/bootstrap.css">-->
  <link rel="stylesheet" type="text/css" href="<?= base_url();?>assets/css/bootstrap.css">


  <!-- Theme css -->
  <link rel="stylesheet" type="text/css" href="<?= base_url();?>assets/css/color1.css" media="screen" id="color">
  <script src="https://cdn.jsdelivr.net/npm/sweetalert2@8"></script>
 <link href="<?= base_url();?>assets/autocomplete/jquery-ui.css" rel="stylesheet" type="text/css"/>


  <style type="text/css">
    .ui-autocomplete-loading { background:url('https://www.sjautoinc.com/1/images/loading-gear.gif') no-repeat right center;
     }
     ui-autocomplete {
    max-height: 200px;
    overflow-y: auto;
    overflow-x: hidden;
}
    /* Absolute Center Spinner */
.loading {
  position: fixed;
  z-index: 999;
  height: 2em;
  width: 2em;
  overflow: show;
  margin: auto;
  top: 0;
  left: 0;
  bottom: 0;
  right: 0;
}

/* Transparent Overlay */
.loading:before {
  content: '';
  display: block;
  position: fixed;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
    background: radial-gradient(rgba(20, 20, 20,.8), rgba(0, 0, 0, .8));

  background: -webkit-radial-gradient(rgba(20, 20, 20,.8), rgba(0, 0, 0,.8));
}

/* :not(:required) hides these rules from IE9 and below */
.loading:not(:required) {
  /* hide "loading..." text */
  font: 0/0 a;
  color: transparent;
  text-shadow: none;
  background-color: transparent;
  border: 0;
}

.loading:not(:required):after {
  content: '';
  display: block;
  font-size: 10px;
  width: 1em;
  height: 1em;
  margin-top: -0.5em;
  -webkit-animation: spinner 150ms infinite linear;
  -moz-animation: spinner 150ms infinite linear;
  -ms-animation: spinner 150ms infinite linear;
  -o-animation: spinner 150ms infinite linear;
  animation: spinner 150ms infinite linear;
  border-radius: 0.5em;
  -webkit-box-shadow: rgba(255,255,255, 0.75) 1.5em 0 0 0, rgba(255,255,255, 0.75) 1.1em 1.1em 0 0, rgba(255,255,255, 0.75) 0 1.5em 0 0, rgba(255,255,255, 0.75) -1.1em 1.1em 0 0, rgba(255,255,255, 0.75) -1.5em 0 0 0, rgba(255,255,255, 0.75) -1.1em -1.1em 0 0, rgba(255,255,255, 0.75) 0 -1.5em 0 0, rgba(255,255,255, 0.75) 1.1em -1.1em 0 0;
box-shadow: rgba(255,255,255, 0.75) 1.5em 0 0 0, rgba(255,255,255, 0.75) 1.1em 1.1em 0 0, rgba(255,255,255, 0.75) 0 1.5em 0 0, rgba(255,255,255, 0.75) -1.1em 1.1em 0 0, rgba(255,255,255, 0.75) -1.5em 0 0 0, rgba(255,255,255, 0.75) -1.1em -1.1em 0 0, rgba(255,255,255, 0.75) 0 -1.5em 0 0, rgba(255,255,255, 0.75) 1.1em -1.1em 0 0;
}

/* Animation */

@-webkit-keyframes spinner {
  0% {
    -webkit-transform: rotate(0deg);
    -moz-transform: rotate(0deg);
    -ms-transform: rotate(0deg);
    -o-transform: rotate(0deg);
    transform: rotate(0deg);
  }
  100% {
    -webkit-transform: rotate(360deg);
    -moz-transform: rotate(360deg);
    -ms-transform: rotate(360deg);
    -o-transform: rotate(360deg);
    transform: rotate(360deg);
  }
}
@-moz-keyframes spinner {
  0% {
    -webkit-transform: rotate(0deg);
    -moz-transform: rotate(0deg);
    -ms-transform: rotate(0deg);
    -o-transform: rotate(0deg);
    transform: rotate(0deg);
  }
  100% {
    -webkit-transform: rotate(360deg);
    -moz-transform: rotate(360deg);
    -ms-transform: rotate(360deg);
    -o-transform: rotate(360deg);
    transform: rotate(360deg);
  }
}
@-o-keyframes spinner {
  0% {
    -webkit-transform: rotate(0deg);
    -moz-transform: rotate(0deg);
    -ms-transform: rotate(0deg);
    -o-transform: rotate(0deg);
    transform: rotate(0deg);
  }
  100% {
    -webkit-transform: rotate(360deg);
    -moz-transform: rotate(360deg);
    -ms-transform: rotate(360deg);
    -o-transform: rotate(360deg);
    transform: rotate(360deg);
  }
}
@keyframes spinner {
  0% {
    -webkit-transform: rotate(0deg);
    -moz-transform: rotate(0deg);
    -ms-transform: rotate(0deg);
    -o-transform: rotate(0deg);
    transform: rotate(0deg);
  }
  100% {
    -webkit-transform: rotate(360deg);
    -moz-transform: rotate(360deg);
    -ms-transform: rotate(360deg);
    -o-transform: rotate(360deg);
    transform: rotate(360deg);
  }
}
  </style>
  <meta name="google-site-verification" content="cHcQvJqkSYlEkPkUKitqydo4ibz2AmX3yldLVKWjXIU" />
</head>
<body class="bg-light ">
  <!-- loader start -->
  <div class="loader-wrapper">
    <div>
      <img src="<?= base_url();?>assets/images/loader.gif" alt="loader">
    </div>
  </div>
  <!-- loader end -->
  <div class="loading" style="display: none;">Loading&#8230;</div>
