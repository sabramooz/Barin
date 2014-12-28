{load_presentation_object filename='formAnswers' assign='obj'}
<!-- Main Content Element  Start-->
  <div class="panel panel-info">
  <div class="panel-heading">
    <h3 class="panel-title">فرم ارتباط با ما</h3>
  </div>
  <div class="panel-body signup">

		<ul>
        {section name=i loop=$obj->forms}
                <li>
                	<a href="?page=formAnswers&id={$obj->forms[i].id}">
                		{$obj->forms[i].persian_name} -- ({$obj->forms[i].latin_name})
               		</a>
                </li>
        {/section}
        </ul>
        <table border="1">
        	<tr>
            {$obj->formsAnswersTitle}
            </tr>
               {section name=i loop=$obj->formsAnswersBody}
                	<tr>
                    	<td>{$obj->formsAnswersBody[i].id}</td>
                    	<td>{$obj->formsAnswersBody[i].user_id}</td>
                        {for $foo=1 to $obj->text_count}
                            <td>{$obj->formsAnswersBody[i].{text|cat:$foo}}</td>
                        {/for}
                        {for $bar=1 to $obj->textarea_count}
                            <td>{$obj->formsAnswersBody[i].{textarea|cat:$bar}}</td>
                        {/for}
               		</tr>
        		{/section}
        </table>
        
    </div>
<!-- Main Content Element  End-->
