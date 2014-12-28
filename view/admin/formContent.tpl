{load_presentation_object filename='formContent' assign='obj'}
<!-- Main Content Element  Start-->
  <div class="panel panel-info">
  <div class="panel-heading">
    <h3 class="panel-title">فرم ارتباط با ما</h3>
  </div>
  <div class="panel-body signup">

	<form method="post" role="form" class="form-horizontal">
			{$obj->content}
            <div class="col-sm-2 ">   
            	<input type="reset" class="btn btn-warning btn-block" value="ویرایش" tabindex="6">
            </div>
            <div class="col-sm-2 "> 
            	<input type="submit" class="btn btn-success btn-block" name="go_content" value="ثبت فرم" tabindex="7">
            </div>

    </form>
    </div>
<!-- Main Content Element  End-->
