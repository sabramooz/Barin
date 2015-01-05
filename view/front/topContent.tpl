{load_presentation_object filename='topContent' assign='obj'}
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
                        <a u=image href="#"><img src="{$obj->site_address}view/front/images/1.jpg" /></a>
                    </div>
                    <div>
                        <a u=image href="#"><img src="{$obj->site_address}view/front/images/2.jpg" /></a>
                    </div>
                    <div>
                        <a u=image href="#"><img src="{$obj->site_address}view/front/images/3.jpg" /></a>
                    </div>
                </div>
                <!-- bullet navigator container -->
                <div u="navigator" class="jssorb13" style="position: absolute; bottom: 16px; right: 6px;">
                    <!-- bullet navigator item prototype -->
                    <div u="prototype" style="POSITION: absolute; WIDTH: 21px; HEIGHT: 21px;"></div>
                </div>
                <!-- Bullet Navigator Skin End -->
                <a style="display: none" href="#">تست</a>
            </div>
            <!-- Jssor Slider End -->
        </div>
        <div class="col-md-5">
            <div class="text-center">
                <br>
                <h2 class="text-center">پیشنهاد ویژه <i class="fa fa-bullhorn"></i></h2>
                <h3 class="text-center">خدمات ویژه در استخر شهربانو</h3>
                <p class="description">
               			تلفن هماهنگی : 55460120
                </p>
                <a class="off text-center">40%<p>تخفیف</p></a>
                <div class="time-remain text-center">
                    <h5>زمان باقی مانده</h5>
                    <p class="digital" id="defaultCountdown" dir="rtl"></p>
                </div>
                <br>
                <a href="?page=product" class="btn btn-info btn-block">مشاهده و خرید کارت <i class="fa fa-eye"></i></a>
            </div>
        </div>
    </section>