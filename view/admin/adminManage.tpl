{load_presentation_object filename='adminManage' assign='obj'}
<!-- Main Content Element  Start-->
<div class="panel panel-info">
<div class="panel-heading">
    <h3 class="panel-title">مدیریت ادمین ها</h3>
</div>
<div class="panel-body signup">
  
      <div class="col-sm-6">
          <form method="post">
              <select name="city" class="form-control">
              {section name=i loop=$obj->cities}
                  <option {if $obj->cities[i].id eq $obj->admins.city_id} selected {/if} value="{$obj->cities[i].id}">{$obj->cities[i].persian_name}</option>
              {/section}
              </select>
         
              <br>
              <input class="btn btn-success" type="submit" value="انتخاب" name="go_city">
          </form> 
          
          
      </div>
      <div class="clearfix"></div>
      <hr>
      {if !empty($obj->go_city)}
      <div class="col-md-6">
      		<form class="form-horizontal" method="post">
            	<input type="hidden" name="id" value="{$obj->admins.id}"><input type="hidden" name="cityId" value="{$obj->admins.city_id}">
            	<div class="col-xs-3"><label for="first_name">نام: </label></div>
                <div class="col-xs-9"><input type="text" class="form-control" name="first_name" value="{$obj->admins.first_name}"></div>
                <div class="clearfix"></div>
                <div class="col-xs-3"><label for="last_name">نام خانوادگی: </label></div>
                <div class="col-xs-9"><input type="text" class="form-control" name="last_name"value="{$obj->admins.last_name}"></div>
                <div class="clearfix"></div>
                <div class="col-xs-3"><label for="melli_code">کد ملی: </label></div>
                <div class="col-xs-9"><input type="text" class="form-control" name="melli_code"value="{$obj->admins.melli_code}"></div>
                <div class="clearfix"></div>
                <div class="col-xs-3"><label for="mobile">موبایل: </label></div>
                <div class="col-xs-9"><input type="text" class="form-control" name="mobile"value="{$obj->admins.mobile}"></div>
                <div class="clearfix"></div>
                <div class="col-xs-3"><label for="mail">ایمیل: </label></div>
                <div class="col-xs-9"><input type="mail" class="form-control" name="mail"value="{$obj->admins.mail}"></div>
                <div class="clearfix"></div>
                <div class="col-xs-3"><label for="password">پسورد: </label></div>
                <div class="col-xs-9"><input type="password" class="form-control" name="password" value="{$obj->admins.password}"></div>
                <div class="clearfix"></div>
                <div class="col-xs-3"><label for="permission">فعال: </label></div>
                <div class="col-xs-9"><input type="checkbox" name="permission" {if $obj->admins.permission eq 1}checked {/if}></div>
                <div class="clearfix"></div>
                <input type="submit" class="btn btn-success" value="ثبت" name="go_edit">
            </form>
      </div>
      {/if}
</div>
<!-- Main Content Element  End-->
