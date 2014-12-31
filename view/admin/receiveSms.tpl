{load_presentation_object filename='receiveSms' assign='obj'}
<!-- Main Content Element  Start-->
  <div class="panel panel-info">
  <div class="panel-heading">
    <h3 class="panel-title">اس ام اس های دریافتی</h3>
  </div>
  <div class="panel-body signup">


                  {section name=i loop=$obj->result}
                        <p>{$obj->result[i]}</p>
                  {/section}
        
    </div>
<!-- Main Content Element  End-->
