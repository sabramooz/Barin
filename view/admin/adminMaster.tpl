{load_presentation_object filename='adminMaster' assign='obj'}
<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/html">
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
    <link rel="shortcut icon" href="http://fickle.aimmate.com/rtl/images/ico/fab.ico?v=1">

    <title>{$obj->pageTitle} | پنل ادمین برین کارت</title>

    <!--Page loading plugin Start -->
    <link rel="stylesheet" href="view/admin/css/rtl-css/plugins/pace-rtl.css">
    <script src="view/admin/js/pace.min.js"></script>
    <!--Page loading plugin End   -->

    <!-- Plugin Css Put Here -->
    <link href="view/admin/css/bootstrap-rtl.css" rel="stylesheet">

    <!-- Plugin Css End -->
    <!-- Custom styles Style -->
    <link href="view/admin/css/rtl-css/style-rtl.css" rel="stylesheet">
    <!-- Custom styles Style End-->

    <!-- Responsive Style For-->
    <link href="view/admin/css/rtl-css/responsive-rtl.css" rel="stylesheet">
    <!-- Responsive Style For-->
	
    <!-- font awesome -->
    <link href="view/admin/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    
    <!-- custom style -->
    <link href="view/admin/css/custom.css" rel="stylesheet">
    
    <!-- Custom styles for this template -->


    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    
</head>
<body class="">
<!--Navigation Top Bar Start-->
<nav class="navigation">
<div class="container-fluid">
<!--Logo text start-->
<div class="header-logo">
    <a href="?page=home" title="">
        <h1>پنل ادمین برین کارت</h1>
    </a>
</div>
<!--Logo text End-->
<div class="top-navigation">
<!--Collapse navigation menu icon start -->
<div class="menu-control hidden-xs">
    <a href="#">
        <i class="fa fa-bars"></i>
    </a>

</div>


<!--Collapse navigation menu icon end -->
<!--Top Navigation Start-->

<ul>
    <li>
        <a href="#">
            {$obj->mail.mail}
        </a>
    </li>
    <li>
        <a href="logout.php">
            <i class="fa fa-power-off"></i>
        </a>
    </li>

</ul>
<!--Top Navigation End-->
</div>
</div>
</nav>
<!--Navigation Top Bar End-->
<section id="main-container">

<!--Left navigation section start-->
<section id="left-navigation">
<!--Left navigation user details start-->
<div class="user-image">
    <img src="view/admin/images/userimage/avatar2-80.jpg" alt=""/>
</div>

<!--Left navigation user details end-->

<!--Phone Navigation Menu icon start-->
<div class="phone-nav-box visible-xs">
    <a class="phone-logo" href="#" title="">
        <h1>تست</h1>
    </a>
    <a class="phone-nav-control" href="#">
        <span class="fa fa-bars"></span>
    </a>
    w
</div>
<!--Phone Navigation Menu icon start-->

<!--Left navigation start-->
<ul class="mainNav">
<li>
    <a href="?page=home">
        <i class="fa fa-home"></i> <span>داشبورد</span>
    </a>
</li>

<li>
    <a href="?page=log">
        <i class="fa fa-home"></i> <span>بازدید کاربران</span>
    </a>
</li>

<li>
    <a href="#">
        <i class="fa fa-file"></i> <span>مدیریت فرم ها</span>
    </a>
    <ul>
        <li>
            <a href="?page=formCreate">ایجاد فرم</a>
        </li>
        <li>
            <a href="?page=formEdit">ویرایش فرم</a>
        </li>
        <li><a href="?page=formAnswers">پاسخ فرم</a>
        </li>
    </ul>
</li>

<li>
    <a href="#">
        <i class="fa fa-envelope"></i> <span>مدیریت اس ام اس ها</span>
    </a>
    <ul>
        <li>
            <a href="?page=sendSms">ارسال اس ام اس</a>
        </li>
        <li>
            <a href="?page=receiveSms">اس ام اس های دریافتی</a>
        </li>
        <li><a href="?page=credit">مانده حساب اس ام اس</a>
        </li>
    </ul>
</li>

<li>
    <a href="#">
        <i class="fa fa-users"></i> <span>مدیریت فروشگاه ها</span>
    </a>
    <ul>
        <li>
            <a href="?page=centerCreate">ثبت فروشگاه جدید</a>
        </li>
        <li>
            <a href="?page=centerEdit">ویرایش فروشگاه ها</a>
        </li>
        <li><a href="?page=centerDelete">حذف فروشگاه</a>
        </li>
    </ul>
</li>

<li>
    <a href="#">
        <i class="fa fa-comment"></i> <span>مدیریت کامنت ها</span>
    </a>
    <ul>
        <li>
            <a href="#">تایید کامنت ها</a>
        </li>
        <li>
            <a href="#">پاسخ گویی به کامنت ها</a>
        </li>
    </ul>
</li>
{if $obj->flag eq 1}
<li>
    <a href="#">
        <i class="fa fa-cogs"></i> <span>تنظیمات پروفایل</span>
    </a>
    <ul>
        <li>
            <a href="?page=changePass">تغییر رمز عبور</a>
        </li>
        <li>
            <a href="?page=adminManage">مدیریت ادمین ها</a>
        </li>
    </ul>
</li>
{/if}
<li>
    <a href="logout.php">
        <i class="fa fa-power-off"></i> <span>خروج</span>
    </a>
</li>

</ul>
<!--Left navigation end-->
</section>
<!--Left navigation section end-->


<!--Page main section start-->
<section id="min-wrapper">
<div id="main-content">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-12">
                <!--Top header start-->
                <h3 class="ls-top-header">{$obj->pageTitle}</h3>
                <!--Top header end -->

                <!--Top breadcrumb start -->
                <ol class="breadcrumb">
                    <li><a href="?page=home"><i class="fa fa-home"></i></a></li>
                    <li class="active"><a href="?page=formAnswers">تست</a></li>
                </ol>
                <!--Top breadcrumb start -->
            </div>
        </div>

    {include file={$obj->page}}


    </div>
</div>

</section>
<!--Page main section end -->
<!--Right hidden  section start-->
<section id="right-wrapper">
    <!--Right hidden  section close icon start-->
    <div class="close-right-wrapper">
        <a href="#"><i class="fa fa-times"></i></a>
    </div>
    <!--Right hidden  section close icon end-->

    <!--Tab navigation start-->
    <ul class="nav nav-tabs" id="setting-tab">
        <li class="active"><a href="#" data-toggle="tab"><i class="fa fa-comment-o"></i> چت</a></li>
        <li><a href="#" data-toggle="tab"><i class="fa fa-cogs"></i> تنظیمات</a></li>
    </ul>
    <!--Tab navigation end -->

    <!--Tab content start-->
    <div class="tab-content">
        <div class="tab-pane active" id="chatTab">
            <div class="nano">
                <div class="nano-content">
                    <div class="chat-group chat-group-fav">
                        <h3 class="ls-header">علاقه مندی ها</h3>
                        <a href="#">
                            <span class="user-status is-online"></span>
                          تست1
                            <span class="badge badge-lightBlue">1</span>
                        </a>
                        <a href="#">
                            <span class="user-status is-idle"></span>
                            تست2
                        </a>
                        <a href="#">
                            <span class="user-status is-busy"></span>
                            تست3
                        </a>
                        <a href="#">
                            <span class="user-status is-offline"></span>
                            تست4
                        </a>
                    </div>
                    <div class="chat-group chat-group-coll">
                        <h3 class="ls-header">همکاران</h3>
                        <a href="#">
                            <span class="user-status is-offline"></span>
                           1
                        </a>
                        <a href="#">
                            <span class="user-status is-idle"></span>
                            2
                        </a>
                        <a href="#">
                            <span class="user-status is-online"></span>
                            3
                            <span class="badge badge-lightBlue">3</span>
                        </a>

                        <a href="#">
                            <span class="user-status is-busy"></span>
                            4
                        </a>

                    </div>
                    <div class="chat-group chat-group-social">
                        <h3 class="ls-header">شبکه اجتماعی</h3>
                        <a href="#">
                            <span class="user-status is-online"></span>
                            1
                            <span class="badge badge-lightBlue">5</span>
                        </a>
                        <a href="#">
                            <span class="user-status is-busy"></span>
                            2
                        </a>
                    </div>
                </div>
            </div>

            <div class="chat-box">
                <div class="chat-box-header">
                    <h5>
                        <span class="user-status is-online"></span>
                        1
                    </h5>
                </div>

                <div class="chat-box-content">
                    <div class="nano nano-chat">
                        <div class="nano-content">

                            <ul>
                                <li>
                                    <span class="user">تست</span>
                                    <p>1</p>
                                    <span class="time">10:10</span>
                                </li>
                                <li>
                                    <span class="user">تست</span>
                                    <p>2</p>
                                    <span class="time">10:12</span>
                                </li>
                                <li>
                                    <span class="user">تست</span>
                                    <p>3</p>
                                    <span class="time">10:15</span>
                                </li>
                                <li>
                                    <span class="user">تست</span>
                                    <p>4</p>
                                    <span class="time">10:20</span>
                                </li>
                                <li>
                                    <span class="user">تست</span>
                                    <p>5</p>
                                    <span class="time">11:00</span>
                                </li>
                                <li>
                                    <span class="user">تست</span>
                                    <p>6</p>
                                    <span class="time">12:00</span>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>


            </div>
            <div class="chat-write">
                <textarea class="form-control autogrow" placeholder="پیام خود را بنویسید"></textarea>
            </div>
        </div>

        <div class="tab-pane" id="settingTab">

            <div class="setting-box">
                <h3 class="ls-header">تنظیمات پروفایل</h3>
                <div class="setting-box-content">
                    <ul>
                        <li><span class="pull-left">افراد آنلاین: </span><input type="checkbox" class="js-switch-red" checked/></li>
                        <li><span class="pull-left">افراد آفلاین: </span><input type="checkbox" class="js-switch-light-blue" checked/></li>
                        <li><span class="pull-left">مد مخفی: </span><input class="js-switch" type="checkbox" checked></li>
                        <li><span class="pull-left">لاگ پیام ها:</span><input class="js-switch-light-green" type="checkbox" checked></li>
                    </ul>
                </div>
            </div>
            <div class="setting-box">
                <h3 class="ls-header">نگهداری</h3>
                <div class="setting-box-content">
                    <div class="easy-pai-box">
                                <span class="easyPieChart" data-percent="90">
                                    <span class="easyPiePercent"></span>
                                </span>
                    </div>
                    <div class="easy-pai-box">
                        <button class="btn btn-xs ls-red-btn js_update">به روزرسانی</button>
                    </div>
                </div>
            </div>

            <div class="setting-box">
                <h3 class="ls-header">پراگرس</h3>
                <div class="setting-box-content">

                    <h5>آپلود فایل</h5>
                    <div class="progress">
                        <div class="progress-bar ls-light-blue-progress six-sec-ease-in-out"
                             aria-valuetransitiongoal="10"></div>
                    </div>

                    <h5>پلاگین ها</h5>
                    <div class="progress progress-striped active">
                        <div class="progress-bar six-sec-ease-in-out ls-light-green-progress"
                             aria-valuetransitiongoal="20"></div>
                    </div>
                    <h5>ثبت مطلب جدید</h5>
                    <div class="progress progress-striped active">
                        <div class="progress-bar ls-yellow-progress six-sec-ease-in-out"
                             aria-valuetransitiongoal="80"></div>
                    </div>
                    <h5>ساخت کاربر جدید</h5>
                    <div class="progress progress-striped active">
                        <div class="progress-bar ls-red-progress six-sec-ease-in-out"
                             aria-valuetransitiongoal="100"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--Tab content -->
</section>
<!--Right hidden  section end -->
<div id="change-color">
    <div id="change-color-control">
        <a href="#"><i class="fa fa-magic"></i></a>
    </div>
    <div class="change-color-box">
        <ul>
            <li class="default active"></li>
            <li class="red-color"></li>
            <li class="blue-color"></li>
            <li class="light-green-color"></li>
            <li class="black-color"></li>
            <li class="deep-blue-color"></li>
        </ul>
    </div>
</div>
</section>

<!--Layout Script start -->
<script type="text/javascript" src="view/admin/js/color.js"></script>
<script type="text/javascript" src="view/admin/js/lib/jquery-1.11.min.js"></script>                          
<script type="text/javascript" src="view/admin/js/resource.js"></script>
<script type="text/javascript" src="view/admin/js/bootstrap.min.js"></script>
<script type="text/javascript" src="view/admin/js/multipleAccordion.js"></script>

<!--easing Library Script Start -->
<script src="view/admin/js/lib/jquery.easing.js"></script>
<!--easing Library Script End -->

<!--Nano Scroll Script Start -->
<script src="view/admin/js/jquery.nanoscroller.min.js"></script>
<!--Nano Scroll Script End -->

<!--switchery Script Start -->
<script src="view/admin/js/switchery.min.js"></script>
<!--switchery Script End -->

<!--bootstrap switch Button Script Start-->
<script src="view/admin/js/bootstrap-switch.js"></script>
<!--bootstrap switch Button Script End-->

<!--easypie Library Script Start -->
<script src="view/admin/js/jquery.easypiechart.min.js"></script>
<!--easypie Library Script Start -->

<!--bootstrap-progressbar Library script Start-->
<script src="view/admin/js/bootstrap-progressbar.min.js"></script>
<!--bootstrap-progressbar Library script End-->

<script type="text/javascript" src="view/admin/js/pages/layout.js"></script>
<!--Layout Script End -->
</body>
</html>