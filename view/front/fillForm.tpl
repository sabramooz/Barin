{load_presentation_object filename='fillForm' assign='obj'}
<h6>{$obj->persian_name.persian_name}</h6>
<form method="post">
{$obj->htmlForms}
<input type="hidden" name="user_id" value="1">
<input type="submit" name="go_fillform" value="sabt">
<input type="reset" value="virayesh">

</form>
