{load_presentation_object filename='formEdit' assign='obj'}
<!-- Main Content Element  Start-->
  <div class="panel panel-info">
  <div class="panel-heading">
    <h3 class="panel-title">ویرایش فرم</h3>
  </div>
  <div class="panel-body signup">

		<ul class="list-unstyled">
        {section name=i loop=$obj->forms}
                <li>
                	<a href="?page=formEdit&id={$obj->forms[i].id}">
                		{$obj->forms[i].persian_name} -- ({$obj->forms[i].latin_name})
               		</a>
                </li>
        {/section}
        </ul>
        <div class="col-md-6">
        <form method="post">
        {$obj->formContent}
        <input type='submit' name='go_activate' class="btn btn-success" value='ثبت'>
        </form>
        </div>
    </div>
<!-- Main Content Element  End-->
