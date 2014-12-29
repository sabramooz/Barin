{load_presentation_object filename='sendSms' assign='obj'}
<!-- Main Content Element  Start-->
  <div class="panel panel-info">
  <div class="panel-heading">
    <h3 class="panel-title">ارسال اس ام اس</h3>
  </div>
  
  	<div class="panel-body signup">
 	 <form method="post" role="form" class="form-horizontal">
			<div class="form-group">
            	<label class="col-sm-2 col-xs-12  control-label" for="password">
                <span class="glyphicon glyphicon-asterisk optional"></span>شماره مورد نظر: </label>
                <div class="col-sm-4 col-md-3 col-xs-12 ">
                	<input type="password" name="password" tabindex="1" autofocus class="form-control">
            	</div>
            </div>
            <div class="form-group">
            	<label class="col-sm-2 col-xs-12  control-label " for="new_password">
                <span class="glyphicon glyphicon-asterisk optional"></span>متن اس ام اس : </label>
            	<div class="col-sm-4 col-md-3 col-xs-12 ">
            		 <textarea name="message"></textarea>
            	</div>
            </div>
            
            
            <div class="col-sm-2 ">   
            	<input type="reset" class="btn btn-warning btn-block" value="ویرایش" tabindex="6">
            </div>
            <div class="col-sm-2 "> 
            	<input type="submit" class="btn btn-success btn-block" name="send" value="ارسال اس ام اس" tabindex="7">
            </div>

    </form>

		
      
    </div>
<!-- Main Content Element  End-->
