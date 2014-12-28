{load_presentation_object filename='formEdit' assign='obj'}
<!-- Main Content Element  Start-->
  <div class="panel panel-info">
  <div class="panel-heading">
    <h3 class="panel-title">فرم ارتباط با ما</h3>
  </div>
  <div class="panel-body signup">

		<ul>
        {section name=i loop=$obj->forms}
                <li>
                	<a href="?page=formEdit&id={$obj->forms[i].id}">
                		{$obj->forms[i].persian_name} -- ({$obj->forms[i].latin_name})
               		</a>
                </li>
        {/section}
        </ul>
        <div class="row">
        <form method="post">
        {$obj->formContent}
        <input type='submit' name='go_activate' value='ثبت'>
        </form>
        </div>
    </div>
<!-- Main Content Element  End-->
