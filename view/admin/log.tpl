{load_presentation_object filename='log' assign='obj'}
<!-- Main Content Element  Start-->
  <div class="panel panel-info">
  <div class="panel-heading">
    <h3 class="panel-title"> فرم نمایش لاگ های کاربران</h3>
  </div>
  <div class="panel-body signup">

		<ul class="list-unstyled">
        </ul>
        <table border="1" class="table table-hover text-center">
        		<tr>
    				<th>مشخصات سیستم کاربر</th>
                    <th>آی پی</th>
                    <th>صفحه درخواست کننده</th>
                    <th>تاریخ و ساعت درخواست</th>
                    <th>شهر</th>   
                </tr>
        	{section name=i loop=$obj->result}
                <tr>
    				<td>{$obj->result[i].HTTP_USER_AGENT}</td>
                    <td>{$obj->result[i].REMOTE_ADDR}</td>
                    <td>{$obj->result[i].REQUEST_URI}</td>
                    <td>{$obj->result[i].REQUEST_TIME}</td>
                    <td>{$obj->result[i].persian_name}</td>   
                </tr>
            {/section} 
        </table>
        
    </div>
<!-- Main Content Element  End-->
