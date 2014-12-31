{load_presentation_object filename='product' assign='obj'}
<div class="col-md-6 text-center" dir="rtl">
    <h3>مشخصات فروشنده</h3>
    <hr>
    <div class="panel panel-primary text-center">
        <div class="panel-heading">نام فروشگاه</div>
        <div class="panel-body">
            <p>آدرس: </p>
            <hr>
            <p>تلفن: </p>
            <hr>
            <p>مدیر: </p>
            <hr>
            <p>شماره مدیر: </p>
        </div>
    </div>
    <hr>
    <div>
    	<iframe src="https://mapsengine.google.com/map/embed?mid=zASG-CfPy70E.kCI88FvK-ZLU" width="100%" height="300"></iframe>
    </div>
    
</div>
<div class="col-md-6 text-center" dir="rtl">
    <h3>ویژگی ها</h3>
    <hr>
    <ul class="text-right">
        <li>همراهی دف و نی در بعضی از شب ها</li>
        <li>به همراه خوانندگان محبوب فرشاد و پهلوان</li>
        <li>10% حق سرویس رایگان ویژه نت برگی ها</li>
        <li>استفاده از مواد مصرفی مرغوب</li>
        <li>ظرفیت 100 نفر</li>
        <li>8% مالیات بر ارزش افزوده در نت برگ لحاظ شده و نیاز به پرداخت هزینه جداگانه نمی باشد</li>
    </ul>
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

