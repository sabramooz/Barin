{load_presentation_object filename='centerCreate' assign='obj'}
<!-- Main Content Element  Start-->
  <div class="panel panel-info">
  <div class="panel-heading">
    <h3 class="panel-title">ثبت فروشگاه جدید</h3>
  </div>
  <div class="panel-body signup">

	<form method="post" role="form" class="form-horizontal">
			<div class="form-group">
            	<label class="col-sm-2 col-xs-12  control-label" for="center_name">
                <span class="glyphicon glyphicon-asterisk optional"></span>نام مرکز: </label>
                <div class="col-sm-4 col-md-3 col-xs-12 ">
                	<input type="text" name="center_name" tabindex="1" autofocus class="form-control">
            	</div>
            </div>
            <div class="form-group">
            	<label class="col-sm-2 col-xs-12  control-label " for="center_manager">
                <span class="glyphicon glyphicon-asterisk optional"></span>نام مدیر : </label>
            	<div class="col-sm-4 col-md-3 col-xs-12 ">
            		<input type="text" name="center_manager" tabindex="2" class="form-control">
            	</div>
            </div>
            
            <div class="form-group">
            	<label class="col-sm-2 col-xs-12  control-label " for="discount">
                <span class="glyphicon glyphicon-asterisk optional"></span>درصد تخفیف : </label>
            	<div class="col-sm-4 col-md-3 col-xs-12 ">
            		<input type="text" name="discount" tabindex="2" class="form-control">
            	</div>
            </div>
            
            <div class="form-group">
            	<label class="col-sm-2 col-xs-12  control-label " for="price">
                <span class="glyphicon glyphicon-asterisk optional"></span>قیمت : </label>
            	<div class="col-sm-4 col-md-3 col-xs-12 ">
            		<input type="text" name="price" tabindex="2" class="form-control">
            	</div>
            </div>
            
            <div class="form-group">
            	<label class="col-sm-2 col-xs-12  control-label " for="address">
                <span class="glyphicon glyphicon-asterisk optional"></span>آدرس : </label>
            	<div class="col-sm-4 col-md-3 col-xs-12 ">
            		<textarea name="address" tabindex="2" class="form-control"></textarea>
            	</div>
            </div>
            
            <div class="form-group">
            	<label class="col-sm-2 col-xs-12  control-label " for="tel">
                <span class="glyphicon glyphicon-asterisk optional"></span>تلفن : </label>
            	<div class="col-sm-4 col-md-3 col-xs-12 ">
            		<input type="text" name="tel" tabindex="2" class="form-control">
            	</div>
            </div>
            
            <div class="form-group">
            	<label class="col-sm-2 col-xs-12  control-label " for="mobile">
                <span class="glyphicon glyphicon-asterisk optional"></span>موبایل : </label>
            	<div class="col-sm-4 col-md-3 col-xs-12 ">
            		<input type="text" name="mobile" tabindex="2" class="form-control">
            	</div>
            </div>
            
            <div class="form-group">
            	<label class="col-sm-2 col-xs-12  control-label " for="website">
                <span class="glyphicon glyphicon-asterisk optional"></span>وب سایت : </label>
            	<div class="col-sm-4 col-md-3 col-xs-12 ">
            		<input type="text" name="website" tabindex="2" class="form-control">
            	</div>
            </div>
            
            <div class="form-group">
            	<label class="col-sm-2 col-xs-12  control-label " for="mail">
                <span class="glyphicon glyphicon-asterisk optional"></span>ایمیل : </label>
            	<div class="col-sm-4 col-md-3 col-xs-12 ">
            		<input type="text" name="mail" tabindex="2" class="form-control">
            	</div>
            </div>
            
            <div class="form-group">
            	<label class="col-sm-2 col-xs-12  control-label " for="left_date">
                <span class="glyphicon glyphicon-asterisk optional"></span>تاریخ اتمام تخفیف : </label>
            	<div class="col-sm-4 col-md-3 col-xs-12 ">
            		<input type="text" name="left_date" tabindex="2" class="form-control">
            	</div>
            </div>
            
            <div class="form-group">
            	<label class="col-sm-2 col-xs-12  control-label " for="google_map">
                <span class="glyphicon glyphicon-asterisk optional"></span>مپ گوگل : </label>
            	<div class="col-sm-4 col-md-3 col-xs-12 ">
            		<textarea name="google_map" tabindex="2" class="form-control"></textarea>
            	</div>
            </div>
            
            <div class="form-group">
            	<label class="col-sm-2 col-xs-12  control-label " for="code">
                <span class="glyphicon glyphicon-asterisk optional"></span>کد : </label>
            	<div class="col-sm-4 col-md-3 col-xs-12 ">
            		<input type="text" name="code" tabindex="2" class="form-control">
            	</div>
            </div>
            
            <div class="form-group">
            	<label class="col-sm-2 col-xs-12  control-label " for="type_id">
                <span class="glyphicon glyphicon-asterisk optional"></span>گروه تخفیف : </label>
            	<div class="col-sm-4 col-md-3 col-xs-12 ">
            		<select type="text" name="type_id" tabindex="2" class="form-control">
                    	{section name=i loop=$obj->types}
                                <option value="{$obj->types[i].id}">{$obj->types[i].name}</option>
                        {/section}
                   	</select>
            	</div>
            </div>
            
            <div class="form-group">
            	<label class="col-sm-2 col-xs-12  control-label " for="category_id">
                <span class="glyphicon glyphicon-asterisk optional"></span>انتخاب زیر مجموعه : </label>
            	<div class="col-sm-4 col-md-3 col-xs-12 ">
            		<select type="text" name="category_id" tabindex="2" class="form-control">
                    	{section name=i loop=$obj->category}
                                <option value="{$obj->category[i].id}">{$obj->category[i].category_name}</option>
                        {/section}
                   	</select>
            	</div>
            </div>
            
            <div class="col-sm-2 ">   
            	<input type="reset" class="btn btn-warning btn-block" value="ویرایش" tabindex="6">
            </div>
            <div class="col-sm-2 "> 
            	<input type="submit" class="btn btn-success btn-block" name="go_form" value="ثبت فرم" tabindex="7">
            </div>

    </form>
    </div>
<!-- Main Content Element  End-->
