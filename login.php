<?php
session_start();
include('protected/configs/config.php');
if(isset($_POST['submit'])){
	$login = DatabaseHandler::getRow("SELECT * FROM admins WHERE mail = '$_POST[username]' AND password = SHA1('$_POST[password]') AND permission = '1' ; ");
	if($login){
		$_SESSION['MM_ADMIN_ID'] = $login['id'];
		header("Location: admin.php");
		}else{
			$error = LOGIN_FAILED;
			}
	}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="description" content="">
    <meta name="author" content="">

    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

    <!-- Viewport metatags -->
    <meta name="HandheldFriendly" content="true" />
    <meta name="MobileOptimized" content="320" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />

    <!-- iOS webapp metatags -->
    <meta name="apple-mobile-web-app-capable" content="yes" />
    <meta name="apple-mobile-web-app-status-bar-style" content="black" />

    <!-- iOS webapp icons -->
    <link rel="apple-touch-icon-precomposed" href="view/admin/images/ios/fickle-logo-72.png" />
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="view/admin/images/ios/fickle-logo-72.png" />
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="view/admin/images/ios/fickle-logo-114.png" />

    <!-- TODO: Add a favicon -->
    <link rel="shortcut icon" href="assets/images/ico/fab.ico">

    <title>ورود به صفحه مدیریت</title>

    <!--Page loading plugin Start -->
    <link rel="stylesheet" href="view/admin/css/rtl-css/plugins/pace-rtl.css">
    <script src="view/admin/js/pace.min.js"></script>
    <!--Page loading plugin End   -->

    <!-- Plugin Css Put Here -->
    <link href="view/admin/css/bootstrap-rtl.css" rel="stylesheet">
    <link rel="stylesheet" href="view/admin/css/plugins/bootstrap-switch.min.css">
    <link rel="stylesheet" href="view/admin/css/plugins/ladda-themeless.min.css">

    <link href="view/admin/css/plugins/humane_themes/bigbox.css" rel="stylesheet">
    <link href="view/admin/css/plugins/humane_themes/libnotify.css" rel="stylesheet">
    <link href="view/admin/css/plugins/humane_themes/jackedup.css" rel="stylesheet">
    <link href="view/admin/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    

    <!-- Plugin Css End -->
    <!-- Custom styles Style -->
    <link href="view/admin/css/rtl-css/style-rtl.css" rel="stylesheet">
    <!-- Custom styles Style End-->

    <!-- Responsive Style For-->
    <link href="view/admin/css/rtl-css/responsive-rtl.css" rel="stylesheet">
    <!-- Responsive Style For-->

    <!-- Custom styles for this template -->


    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body class="login-screen">
<section>
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12">
                <div class="login-box">
                    <div class="login-content" >
                        <div class="login-user-icon"  style="border: 5px solid #66AFE9 !important;">
                            <i class="fa fa-user" style="color:#66AFE9;"></i>

                        </div>
                        <h4 style="color:#FFF;">فرم ورود به پنل ادمین</h4>
                    </div>
                    <div class="text-center" style="color:#FF2424;font-weight:bold;font-size:17px;">
						<?php if(isset($error)){echo $error;} ?>
                    </div>
                    <div class="login-form">
                        <form id="form-login" class="form-horizontal ls_form" method="post">
                            <div class="input-group ls-group-input">
                                <input class="form-control" name="username" type="text" placeholder="نام کاربری">
                                <span class="input-group-addon"><i class="fa fa-user"></i></span>
                            </div>
                            <div class="input-group ls-group-input">

                                <input type="password" placeholder="کلمه عبور" name="password" class="form-control">
                                <span class="input-group-addon"><i class="fa fa-lock"></i></span>
                            </div>
                            <div class="input-group ls-group-input login-btn-box">
                                <button class="btn ls-dark-btn ladda-button col-md-12 col-sm-12 col-xs-12" data-style="slide-down" name="submit">
                                    <span class="ladda-label"><i class="fa fa-key"></i></span>
                                </button>

                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <p class="copy-right big-screen hidden-xs hidden-sm">
        <span>&#169;</span> Ratyweb <span class="footer-year">2014</span>
    </p>
</section>

</body>
<script src="view/admin/js/lib/jquery-2.1.1.min.js"></script>
<script src="view/admin/js/lib/jquery.easing.js"></script>
<script src="view/admin/js/bootstrap-switch.min.js"></script>
<!--Script for notification start-->
<script src="view/admin/js/loader/spin.js"></script>
<script src="view/admin/js/loader/ladda.js"></script>
<script src="view/admin/js/humane.min.js"></script>
<!--Script for notification end-->

</html>