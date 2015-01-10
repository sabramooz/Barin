{load_presentation_object filename='centerImage' assign='obj'}
<!-- Main Content Element  Start-->
  <div class="panel panel-info">
  <div class="panel-heading">
    <h3 class="panel-title">ثبت عکس فروشگاه</h3>
  </div>
  <div class="panel-body signup">
	{$obj->error}
	<form method="post" role="form" class="form-horizontal" enctype="multipart/form-data">
    
			<div class="form-group">
            	<label class="col-sm-2 col-xs-12  control-label" for="center_name">
                عکس : </label>
                <div class="col-sm-4 col-md-3 col-xs-12 ">
                	<input type="file" name="image_name" tabindex="1" autofocus>
            	</div>
            </div>
            
            <div class="col-sm-2 ">   
            	<input type="reset" class="btn btn-warning btn-block" value="ویرایش" tabindex="6">
            </div>
            <div class="col-sm-2 "> 
            	<input type="submit" class="btn btn-success btn-block" name="center_register" value="ثبت عکس" tabindex="7">
            </div>

    </form>
    </div>
<!-- Main Content Element  End-->
