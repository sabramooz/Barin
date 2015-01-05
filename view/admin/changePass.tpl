{load_presentation_object filename='changePass' assign='obj'}
<!-- Main Content Element  Start-->
  <div class="panel panel-info">
  <div class="panel-heading">
    <h3 class="panel-title">تغییر رمز عبور</h3>
  </div>
  <div class="panel-body signup">
	{$obj->error}
	<form method="post" role="form" class="form-horizontal">
			<div class="form-group">
            	<label class="col-sm-2 col-xs-12  control-label" for="password">
                <span class="glyphicon glyphicon-asterisk optional"></span>رمز عبور فعلی: </label>
                <div class="col-sm-4 col-md-3 col-xs-12 ">
                	<input type="password" name="password" tabindex="1" autofocus class="form-control">
            	</div>
            </div>
            <div class="form-group">
            	<label class="col-sm-2 col-xs-12  control-label " for="new_password">
                <span class="glyphicon glyphicon-asterisk optional"></span>رمز عبور جدید : </label>
            	<div class="col-sm-4 col-md-3 col-xs-12 ">
            		<input type="password" name="new_password" tabindex="2" class="form-control">
            	</div>
            </div>
            
            <div class="form-group">
            	<label class="col-sm-2 col-xs-12  control-label " for="renew_password">
                <span class="glyphicon glyphicon-asterisk optional"></span>تکرار رمز عبور جدید : </label>
            	<div class="col-sm-4 col-md-3 col-xs-12 ">
            		<input type="password" name="re_new_password" tabindex="2" class="form-control">
            	</div>
            </div>
            
            
            <div class="col-sm-2 ">   
            	<input type="reset" class="btn btn-warning btn-block" value="ویرایش" tabindex="6">
            </div>
            <div class="col-sm-2 "> 
            	<input type="submit" class="btn btn-success btn-block" name="go_change" value="ثبت تغییرات" tabindex="7">
            </div>

    </form>
    </div>
<!-- Main Content Element  End-->
