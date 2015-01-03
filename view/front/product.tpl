{load_presentation_object filename='product' assign='obj'}
<section class="top-content row">
        <div class="slide-show col-md-5 col-sm-8">
            <!-- Jssor Slider Begin -->
            <!-- You can move inline styles to css file or css block. -->
            <div id="slider1_container" style="position: relative; width: 400px; height: 300px; background-color: #000; overflow: hidden; ">

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
                <div u="slides" style="cursor: move; position: absolute; left: 0; top: 0; width: 400px; height: 300px;
            overflow: hidden;">
            {section name=i loop=$obj->images}
                    <div>
                        <a u=image href="#"><img src="{$obj->site_address}view/front/images/centers/{$obj->city}/{$obj->images[i].name}" /></a>
                    </div>
             {/section}
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
        <div class="col-md-5 col-sm-offset-1">
            <div class="text-center">
                <br><br>
                <h3 class="text-center">{$obj->result.center_name}</h3>
                <p class="description">زیر مجموعه : {$obj->result.category_id}</p>
                <a class="off text-center">{$obj->result.discount}%<p>تخفیف</p></a>
                <br>
                <a href="?page=buy" class="btn btn-info btn-block">خرید کارت <i class="fa fa-eye"></i></a>
            </div>
        </div>
    </section>
    <div class="clearfix"></div>
    
<div class="col-md-6 text-center" dir="rtl">
    <h3>مشخصات فروشنده</h3>
    <hr>
    <div class="panel panel-primary text-center">
        <div class="panel-heading">{$obj->result.center_name}</div>
        <div class="panel-body">
            <p>آدرس: {$obj->result.address}</p>
            <hr>
            <p>تلفن: {$obj->result.tel}</p>
            <hr>
            <p>مدیر: {$obj->result.center_manager}</p>
            <hr>
            <p>شماره مدیر: {$obj->result.mobile}</p>
            <hr>
            <p>وب سایت: {$obj->result.website}</p>
        </div>
    </div>
    <hr>
    <div>
    {if !empty($obj->result.google_map) }
    	<iframe src="{$obj->result.google_map}" width="100%" height="300"></iframe>
    {/if}
    </div>
    
</div>
<div class="col-md-6 text-center" dir="rtl">
    <h3>ویژگی ها</h3>
    <hr>
    
        <pre>{$obj->result.detail}</pre>
   
</div>
<div class="clearfix"></div>
<hr>
<div class="comment" dir="rtl">
	<h3>نظرات</h3>
    <div class="comment-part">
        	{$obj->comments}
          <form method="post">    		
            <div class="new-comment">
            	<h3>نظرات شما</h3>
            	<textarea class="form-control" name="text" rows="5"></textarea>
                <input type="hidden" name="center_id" value="1">
                <input type="submit" class="btn btn-success" name="comment" value="ارسال">
            </div>
        </form>
    </div>
</div>

