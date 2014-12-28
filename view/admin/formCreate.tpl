{load_presentation_object filename='formCreate' assign='obj'}
<!-- Main Content Element  Start-->
  <div class="panel panel-info">
  <div class="panel-heading">
    <h3 class="panel-title">فرم ارتباط با ما</h3>
  </div>
  <div class="panel-body signup">

	<form method="post" role="form" class="form-horizontal">
			<div class="form-group">
            	<label class="col-sm-2 col-xs-12  control-label" for="latin_name"><span class="glyphicon glyphicon-asterisk optional"></span>نام لاتین: </label>
                <div class="col-sm-4 col-md-3 col-xs-12 ">
                	<input type="text" name="latin_name" tabindex="1" autofocus class="form-control">
            	</div>
                <span class="help-block">نام یونیک</span> 
            </div>
            <div class="form-group">
            	<label class="col-sm-2 col-xs-12  control-label " for="persian_name"><span class="glyphicon glyphicon-asterisk optional"></span>نام فارسی : </label>
            	<div class="col-sm-4 col-md-3 col-xs-12 ">
            		<input type="text" name="persian_name" tabindex="2" class="form-control">
            	</div>
            </div>
            
            <div class="form-group">
                <label class="col-sm-2 col-xs-12  control-label " for="activate"><span class="glyphicon glyphicon-asterisk optional"></span> فعال : </label>
                <div class="col-sm-4 col-md-3 col-xs-12 ">
                	<input class="form-control"  type="checkbox" name="activate" tabindex="3">
                </div>
                 
            </div>
            <div class="form-group">
                <label class="col-sm-2 col-xs-12  control-label " for="text"><span class="glyphicon glyphicon-asterisk optional"></span> تعداد textbox : </label>
                <div class="col-sm-4 col-md-3 col-xs-12 ">
                	<input class="form-control"  type="text" name="text" tabindex="4">
                </div>
                 
            </div>
            <div class="form-group">
                <label class="col-sm-2 col-xs-12  control-label " for="textarea"><span class="glyphicon glyphicon-asterisk optional"></span> تعداد textarea : </label>
                <div class="col-sm-4 col-md-3 col-xs-12 ">
                	<input class="form-control"  type="text" name="textarea" tabindex="5">
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
