{load_presentation_object filename='signup' assign='obj'}
<div class="col-md-7 col-md-offset-2 form-bg">
    <form class="form-horizontal" dir="rtl" method="post">
        <div class="form-group">
            <label class="col-sm-2 col-xs-4 control-label pull-right">نام</label>
            <div class="col-sm-10 col-xs-8 pull-right">
                <input type="text" class="form-control" id="inputEmail3" placeholder="نام" name="first_name">
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-2 col-xs-4 control-label pull-right">نام خانوادگی</label>
            <div class="col-sm-10 col-xs-8 pull-right">
                <input type="text" class="form-control" placeholder="نام خانوادگی" name="last_name">
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-2 col-xs-4 control-label pull-right">تلفن</label>
            <div class="col-sm-10 col-xs-8 pull-right">
                <input type="text" class="form-control" placeholder="تلفن" name="mobile">
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-2 col-xs-4 control-label pull-right">ایمیل</label>
            <div class="col-sm-10 col-xs-8 pull-right">
                <input type="email" class="form-control" placeholder="ایمیل" name="mail">
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-2 col-xs-4 control-label pull-right">کلمه عبور</label>
            <div class="col-sm-10 col-xs-8 pull-right">
                <input type="password" class="form-control" placeholder="کلمه عبور" name="password">
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-2 col-xs-4 control-label pull-right">تکرار کلمه عبور</label>
            <div class="col-sm-10 col-xs-8 pull-right">
                <input type="password" class="form-control" placeholder="تکرار کلمه عبور" name="repassword">
            </div>
        </div>
        
        <div class="radio">
        	<strong>جنسیت: </strong>
            
              <label>
                مرد
                <input type="radio" name="gender" id="optionsRadios1" value="man" checked>
              </label>
              /
              <label>زن
                <input type="radio" name="gender" id="optionsRadios2" value="woman">
              </label>
        </div><br>
        <div class="form-group">
            <label class="col-sm-2 col-xs-4 control-label pull-right">شهر</label>
            <div class="col-sm-10 col-xs-8 pull-right">
                <input type="password" class="form-control" placeholder="شهر" name="city">
            </div>
        </div>

        <div class="form-group pull-right">
            <div class="col-sm-offset-2 col-sm-10">
                <input type="submit" class="btn btn-success" value="ثبت نام" name="signup">
                <input type="reset" class="btn btn-default" value="ویرایش">
            </div>
        </div>
    </form>
    {$obj->error}
</div>
<div class="clearfix"></div>
<hr>