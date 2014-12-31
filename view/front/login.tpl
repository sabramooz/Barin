{load_presentation_object filename='login' assign='obj'}
<div class="col-md-7 col-md-offset-2 form-bg">
    <form class="form-horizontal" dir="rtl" method="post">
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

        <div class="form-group pull-right">
            <div class="col-sm-offset-2 col-sm-10">
                <input type="submit" class="btn btn-success" value="ثبت نام" name="login">
                <input type="reset" class="btn btn-default" value="ویرایش">
            </div>
        </div>
    </form>
</div>
<div class="clearfix"></div>
<hr>