{load_presentation_object filename='home' assign='obj'}

            <!-- Main Content Element  Start-->
            <!--<div class="demo-blockquote">
                <blockquote class="styles">
                    <p>Don’t walk behind me; I may not lead. Don’t walk in front of me; I may not follow. Just walk beside me and be my friend.</p>
                    <footer>Albert Camus</footer>
                </blockquote>
            </div>-->

<h4>اطلاعات سیستم عامل :  </h4>
		<table border="1">
        	<tr>
            	<th class="resource">سیستم عامل</th>
                <td class="resource">{$obj->info->os}</td>
            </tr>
            <tr>
            	<th class="resource">هسته</th>
                <td class="resource">{$obj->info->kernel}</td>
            </tr>
            <tr>
            	<th class="resource">معماری سی پی یو</th>
                <td class="resource">{$obj->info->CPUArchitecture}</td>
            </tr>
            <tr>
            	<th class="resource">پروسس های فعال</th>
                <td class="resource">{$obj->info->proccess['threads']}</td>
            </tr>
            <tr>
            	<th class="resource">آی پی</th>
                <td class="resource">{$obj->info->ip}</td>
            </tr>
        </table>
        <hr>
        <h4>اطلاعات سی پی یو :  </h4>	
        
        {$obj->cpuTable}
                
		
         					
       <h4>درصد کارکرد سی پی یو :  </h4>
        <div class="progress" style="width:500px;">
          <div id="cpu" class="cpu" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="width: 0%">
            <span>0</span>
          </div>
        </div>
        
        <hr>
        <h4>اطلاعات حافظه رم :  </h4>           
       <span>فضای کل رم :  </span><span class="total"></span> GB<br>
       <span>فضلی خالی رم :  </span><span class="free"></span> GB
       <h4>درصد استفاده از رم :  </h4>
        <div class="progress" style="width:500px;">
          <div id="ram" class="ram" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="width: 0%">
            <span>0</span>%
          </div>
        </div>
                                


            <!-- Main Content Element  End-->
