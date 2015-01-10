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
        <div class="form-group">
        <label class="col-sm-2 col-xs-4 control-label pull-right">جنسیت</label>
            <div class="col-sm-4 col-xs-4 pull-right">
                <select name="gender" class="form-control">
                  <option>مرد</option>
                  <option>زن</option>
              	</select>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-2 col-xs-4 control-label pull-right">استان</label>
            <div class="col-sm-10 col-xs-8 pull-right">
                <select name="city" class="form-control">
              {section name=i loop=$obj->cities}
                  <option value="{$obj->cities[i].id}">{$obj->cities[i].persian_name}</option>
              {/section}
              </select>
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