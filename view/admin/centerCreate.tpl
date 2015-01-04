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
                نام مرکز: </label>
                <div class="col-sm-4 col-md-3 col-xs-12 ">
                	<input type="text" name="center_name" tabindex="1" autofocus class="form-control">
            	</div>
            </div>
            <div class="form-group">
            	<label class="col-sm-2 col-xs-12  control-label " for="center_manager">
                نام مدیر : </label>
            	<div class="col-sm-4 col-md-3 col-xs-12 ">
            		<input type="text" name="center_manager" tabindex="2" class="form-control">
            	</div>
            </div>
            
            <div class="form-group">
            	<label class="col-sm-2 col-xs-12  control-label " for="discount">
                درصد تخفیف : </label>
            	<div class="col-sm-4 col-md-3 col-xs-12 ">
            		<input type="text" name="discount" tabindex="2" class="form-control">
            	</div>
            </div>
            
            <div class="form-group">
            	<label class="col-sm-2 col-xs-12  control-label " for="price">
                قیمت : </label>
            	<div class="col-sm-4 col-md-3 col-xs-12 ">
            		<input type="text" name="price" tabindex="2" class="form-control">
            	</div>
            </div>
            
            <div class="form-group">
            	<label class="col-sm-2 col-xs-12  control-label " for="address">
                آدرس : </label>
            	<div class="col-sm-4 col-md-3 col-xs-12 ">
            		<textarea name="address" tabindex="2" class="form-control"></textarea>
            	</div>
            </div>
            
            <div class="form-group">
            	<label class="col-sm-2 col-xs-12  control-label " for="tel">
                تلفن : </label>
            	<div class="col-sm-4 col-md-3 col-xs-12 ">
            		<input type="text" name="tel" tabindex="2" class="form-control">
            	</div>
            </div>
            
            <div class="form-group">
            	<label class="col-sm-2 col-xs-12  control-label " for="mobile">
                موبایل : </label>
            	<div class="col-sm-4 col-md-3 col-xs-12 ">
            		<input type="text" name="mobile" tabindex="2" class="form-control">
            	</div>
            </div>
            
            <div class="form-group">
            	<label class="col-sm-2 col-xs-12  control-label " for="website">
                وب سایت : </label>
            	<div class="col-sm-4 col-md-3 col-xs-12 ">
            		<input type="text" name="website" tabindex="2" class="form-control">
            	</div>
            </div>
            
            <div class="form-group">
            	<label class="col-sm-2 col-xs-12  control-label " for="mail">
                ایمیل : </label>
            	<div class="col-sm-4 col-md-3 col-xs-12 ">
            		<input type="text" name="mail" tabindex="2" class="form-control">
            	</div>
            </div>
            
            <div class="form-group">
            	<label class="col-sm-2 col-xs-12  control-label " for="left_date">
                تاریخ اتمام تخفیف : </label>
            	<div class="col-xs-1">
                    <select class="form-control" name="left_date_year" tabindex="14">
                        <option>1393</option>
                        <option>1394</option>
                    </select>
                    </div>
                    <div class="col-xs-1">
                    <select class="form-control" name="left_date_month" tabindex="14">
                        <option value="01">فروردین</option>
                        <option value="02">اردیبهشت</option>
                        <option value="03">خرداد</option>
                        <option value="04">تیر</option>
                        <option value="05">مرداد</option>
                        <option value="06">شهریور</option>
                        <option value="07">مهر</option>
                        <option value="08">آبان</option>
                        <option value="09">آذر</option>
                        <option value="10">دی</option>
                        <option value="11">بهمن</option>
                        <option value="12">اسفند</option>
                    </select>
                    </div>
                    <div class="col-xs-1">
                    <select class="form-control" name="left_date_day" tabindex="14">
                        <option value="01">1</option>
                        <option value="02">2</option>
                        <option value="03">3</option>
                        <option value="04">4</option>
                        <option value="05">5</option>
                        <option value="06">6</option>
                        <option value="07">7</option>
                        <option value="08">8</option>
                        <option value="09">9</option>
                        <option value="10">10</option>
                        <option value="11">11</option>
                        <option value="12">12</option>
                        <option value="13">13</option>
                        <option value="14">14</option>
                        <option value="15">15</option>
                        <option value="16">16</option>
                        <option value="17">17</option>
                        <option value="18">18</option>
                        <option value="19">19</option>
                        <option value="20">20</option>
                        <option value="21">21</option>
                        <option value="22">22</option>
                        <option value="23">23</option>
                        <option value="24">24</option>
                        <option value="25">25</option>
                        <option value="26">26</option>
                        <option value="27">27</option>
                        <option value="28">28</option>
                        <option value="29">29</option>
                        <option value="30">30</option>
                        <option value="31">31</option>
                    </select>
                    </div>
            </div>
            
            <div class="form-group">
            	<label class="col-sm-2 col-xs-12  control-label " for="google_map">
                مپ گوگل : </label>
            	<div class="col-sm-4 col-md-3 col-xs-12 ">
            		<textarea name="google_map" tabindex="2" class="form-control"></textarea>
            	</div>
            </div>
            
            <div class="form-group">
            	<label class="col-sm-2 col-xs-12  control-label " for="code">
                کد : </label>
            	<div class="col-sm-4 col-md-3 col-xs-12 ">
            		<input type="text" name="code" tabindex="2" class="form-control">
            	</div>
            </div>
            
            <div class="form-group">
            	<label class="col-sm-2 col-xs-12  control-label " for="code">
                جزئیات : </label>
            	<div class="col-sm-4 col-md-3 col-xs-12 ">
            		<textarea type="text" name="detail" tabindex="2" class="form-control"></textarea>
            	</div>
            </div>
            
            <div class="form-group">
            	<label class="col-sm-2 col-xs-12  control-label " for="type_id">
                گروه تخفیف : </label>
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
                انتخاب زیر مجموعه : </label>
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
            	<input type="submit" class="btn btn-success btn-block" name="center_register" value="ثبت فرم" tabindex="7">
            </div>

    </form>
    </div>
<!-- Main Content Element  End-->
