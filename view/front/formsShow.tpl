{load_presentation_object filename='formsShow' assign='obj'}
<h6>forms</h6>
<ul>
        {section name=i loop=$obj->forms}
                <li>
                	<a href="?page=fillForm&id={$obj->forms[i].id}">
                		{$obj->forms[i].persian_name}
               		</a>
                </li>
        {/section}
 </ul>
