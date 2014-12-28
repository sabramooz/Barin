{load_presentation_object filename='master' assign='obj'}
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title>برین کارت</title>
    <link rel="stylesheet" type="text/css" href="view/front/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="view/front/css/custom.css">
    <link rel="stylesheet" type="text/css" href="view/front/css/slider.css">
    <link rel="stylesheet" type="text/css" href="view/front/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="view/front/css/jquery.countdown.css">
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
    <div class="navbar-top navbar-fixed-top">
        <div class="col-xs-4 pull-right town-choose">
            <ul class="nav navbar-nav navbar-right town-choose">
                <li class="pull-right dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">تهران <i class="fa fa-caret-down"></i></a>
                    <ul class="dropdown-menu col-md-3" role="menu">
                        <li><a href="#">تهران</a></li>
                        <li><a href="#">اصفهان</a></li>
                        <li><a href="#">شیراز</a></li>
                        <li><a href="#">مشهد</a></li>
                        <li><a href="#">اهواز</a></li>
                        <li><a href="#">قزوین</a></li>
                        <li><a href="#">همدان</a></li>
                        <li><a href="#">تهران</a></li>
                        <li><a href="#">اصفهان</a></li>
                        <li><a href="#">شیراز</a></li>
                        <li><a href="#">مشهد</a></li>
                        <li><a href="#">اهواز</a></li>
                        <li><a href="#">قزوین</a></li>
                        <li><a href="#">همدان</a></li>
                        <li><a href="#">تهران</a></li>
                        <li><a href="#">اصفهان</a></li>
                        <li><a href="#">شیراز</a></li>
                        <li><a href="#">مشهد</a></li>
                        <li><a href="#">اهواز</a></li>
                        <li><a href="#">قزوین</a></li>
                        <li><a href="#">همدان</a></li>
                        <li><a href="#">تهران</a></li>
                        <li><a href="#">اصفهان</a></li>
                        <li><a href="#">شیراز</a></li>
                        <li><a href="#">مشهد</a></li>
                        <li><a href="#">اهواز</a></li>
                        <li><a href="#">قزوین</a></li>
                        <li><a href="#">همدان</a></li>
                    </ul>
                </li>
            </ul>
        </div>
        <div class="col-md-4 col-xs-8 search">
            <div class="input-group">
                <input type="text" class="form-control" dir="rtl" placeholder="جستجو...">
                <span class="input-group-btn">
                    <button class="btn btn-info" type="button"><i class="fa fa-search"></i></button>
                </span>
            </div><!-- /input-group -->
        </div>
    </div>
    <header class="container-fluid header-top">
        <div class="col-md-2 col-xs-6 member pull-right text-right hidden-xs">
            <a href="?page=login">ورود کاربر<span class="fa fa-sign-in"></span></a>
            <a href="?page=signup">ثبت نام کنید<span class="fa fa-user"></span></a>
        </div>
        <div class="member-xs visible-xs pull-right text-right">
            <a href="#"><i class="fa fa-sign-in"></i></a>
            <a href="#"><i class="fa fa-user"></i></a>
        </div>

        <div class="col-md-2 col-sm-4 col-xs-6"><a class="brand" href="?main"><img class="img-responsive" src="view/front/images/logo.png"></a></div>
        <div class="clearfix"></div>

    </header>
    <div class="clearfix"></div>
    <nav class="navbar navbar-default" role="navigation">
        <div class=" social-network text-right">
            <a href="#" class="social-s rss"></a>
            <a href="#" class="social-s pdf"></a>
        </div>
        <div class="container-fluid">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>

            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">

                <ul class="nav navbar-nav navbar-right">
                    <li class="pull-right active"><a href="?main">صفحه اصلی <i class="fa fa-home"></i></a></li>
                    <li class="pull-right "><a href="#">مراکز طرف قرارداد <i class="fa fa-home"></i></a></li>
                    <li class="pull-right "><a href="#">سفارش برین کارت <i class="fa fa-shopping-cart"></i></a></li>
                    <li class="pull-right "><a href="#">تماس با ما <i class="fa fa-envelope"></i></a></li>
                </ul>
            </div><!-- /.navbar-collapse -->
        </div><!-- /.container-fluid -->
    </nav>
    <section class="top-content container">
        <div class="slide-show col-md-7">
            <!-- Jssor Slider Begin -->
            <!-- You can move inline styles to css file or css block. -->
            <div id="slider1_container" style="position: relative; width: 600px; height: 500px; background-color: #000; overflow: hidden; ">

                <!-- Loading Screen -->
                <div u="loading" style="position: absolute; top: 0; left: 0;">
                    <div style="filter: alpha(opacity=70); opacity:0.7; position: absolute; display: block;
                background-color: #000; top: 0; left: 0;width: 100%;height:100%;">
                    </div>
                    <div style="position: absolute; display: block; background: url(images/loading.gif) no-repeat center center;
                top: 0; left: 0;width: 100%;height:100%;">
                    </div>
                </div>

                <!-- Slides Container -->
                <div u="slides" style="cursor: move; position: absolute; left: 0; top: 0; width: 600px; height: 500px;
            overflow: hidden;">
                    <div>
                        <a u=image href="#"><img src="view/front/images/1.jpg" /></a>
                    </div>
                    <div>
                        <a u=image href="#"><img src="view/front/images/2.jpg" /></a>
                    </div>
                    <div>
                        <a u=image href="#"><img src="view/front/images/3.jpg" /></a>
                    </div>
                    <div>
                        <a u=image href="#"><img src="view/front/images/4.jpg" /></a>
                    </div>
                </div>
                <!-- bullet navigator container -->
                <div u="navigator" class="jssorb13" style="position: absolute; bottom: 16px; right: 6px;">
                    <!-- bullet navigator item prototype -->
                    <div u="prototype" style="POSITION: absolute; WIDTH: 21px; HEIGHT: 21px;"></div>
                </div>
                <!-- Bullet Navigator Skin End -->
                <a style="display: none" href="#">jquery photo gallery</a>
            </div>
            <!-- Jssor Slider End -->
        </div>
        <div class="col-md-5">
            <div class="text-center">
                <br>
                <h2 class="text-center">پیشنهاد ویژه <i class="fa fa-bullhorn"></i></h2>
                <h3 class="text-center">پذیرایی ویژه در رستوران لوکس طهرانی</h3>
                <p class="description">پذیرایی لوکس در رستوران شیک لوکس طهرانی با منوی باز با 50% تخفیف و پرداخت تنها 10,000 تومان به جای 20,000 تومان</p>
                <a class="off text-center">50%<p>تخفیف</p></a>
                <div class="time-remain text-center">
                    <h5>زمان باقی مانده</h5>
                    <p class="digital" id="defaultCountdown" dir="rtl"></p>
                </div>
                <br>
                <a class="btn btn-info btn-block">مشاهده <i class="fa fa-eye"></i></a>
            </div>
        </div>
    </section>
    <div class="clearfix"></div>
    <hr>
    <section class="side-bar col-sm-3 hidden-xs text-center">
        <div class="panel panel-primary text-center">
            <div class="panel-heading">نماد اعتماد ملی الکترونیک</div>
            <div class="panel-body">
                <img src="view/front/images/namad1.png">
            </div>
        </div>

        <div class="advertise"><img src="view/front/images/esam.jpg"> </div>
        <div class="advertise"><img src="view/front/images/elecomp-winners.jpg"> </div>
        <div class="advertise"><img src="view/front/images/esam.jpg"> </div>
        <div class="advertise"><img src="view/front/images/elecomp-winners.jpg"> </div>
        <div class="advertise"><img src="view/front/images/esam.jpg"> </div>
        <div class="advertise"><img src="view/front/images/elecomp-winners.jpg"> </div>
        <div class="advertise"><img src="view/front/images/esam.jpg"> </div>
        <div class="advertise"><img src="view/front/images/elecomp-winners.jpg"> </div>
    </section>
    <section class="main-content col-sm-9">
    
    
 {include file={$obj->page}}

    </section>
    <div class="clearfix"></div>
    <hr>
    <footer>
        <div class="footer-top">
            <div class="col-md-4 text-center">
                <h1>ارتباط با ما</h1>
                <hr>
                <ul class="list-unstyled text-right" dir="rtl">
                    <li><i class="fa fa-phone"></i> تلفن : 88759591 (5 خط)</li>
                    <li><i class="fa fa-phone-square"></i> خط ویژه : 88507922</li>
                    <li><i class="fa fa-taxi"></i> آدرس : خیابان شهید بهشتی ، بعد از خیابان میر عماد ، پلاک 294 ، طبقه پنجم ، واحد 501 </li>
                </ul>
            </div>
            <div class="col-md-4 text-center">
                <h1>درباره ما</h1>
                <hr>
                <ul class="list-unstyled">
                    <li><a href="#">برین کارت چیست؟</a> </li>
                    <li><a href="#">تماس با ما</a> </li>
                    <li><a href="#">شرایط اخذ نمایندگی</a> </li>
                    <li><a href="#">دانلود لیست کامل مراکز</a> </li>
                </ul>
            </div>
            <div class="col-md-4 text-center">
                <h1>شبکه های اجتماعی</h1>
                <hr>
                <ul class="list-unstyled social-network" style="border-right: none">
                    <li><a href="#" class="social facebook"></a></li>
                    <li><a href="#" class="social twitter"></a></li>
                    <li><a href="#" class="social google-plus"></a></li>
                    <li><a href="#" class="social facebook"></a></li>
                </ul>
            </div>
            <div class="clearfix"></div>
            <hr>
            <div class="col-md-6 text-center">
            	<h2>نرم افزار موبایل</h2>
            	<div class="btn-group"><a href="#" class="btn btn-app btn-lg">اندروید</a><a href="#" class="btn btn-lg btn-app"><i class="fa fa-android"></i></a></div>
                <div class="btn-group"><a href="#" class="btn btn-app btn-lg">آیفون</a><a href="#" class="btn btn-lg btn-app"><i class="fa fa-apple"></i></a></div>
            </div>
            <div class="col-md-6 text-center" dir="rtl">
            	<h2>عضویت در خبرنامه</h2>
            	<form class="form-inline">
                	<input type="email" class="form-control" placeholder="ایمیل خود را وارد کنید"><input type="submit" class="btn btn-success" value="ثبت">
                </form>
            </div>
            <div class="clearfix"></div>
        </div>
        <div class="clearfix"></div>
        <div class="footer-bottom">
            <p dir="rtl">کلیه حقوق مادی و معنوی این سایت متعلق به مجموعه یگانه نوآوران پویا می باشد.</p>
            طراحی: <a href="http://rayweb.ir"> رای وب </a>
        </div>
    </footer>

<script src="view/front/js/jquery.js"></script>
<script src="view/front/js/jssor.js"></script>
<script src="view/front/js/jssor.slider.min.js"></script>
<script src="view/front/js/slider.js"></script>
<script src="view/front/js/bootstrap.min.js"></script>
<script type="text/javascript" src="view/front/js/jquery.plugin.js"></script>
<script type="text/javascript" src="view/front/js/jquery.countdown.js"></script>
<script src="view/front/js/custom.js"></script>
</body>
</html>