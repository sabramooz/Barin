<?php
  class Home
  {
      public
        $title = 'صفحه اصلی',
		$info,
		$cpuTable
        
        ;
      function __construct()
      {
         $this->info = new serverInfo(); 
		 
		 $i = 1;
			$this->cpuTable = '<table border="1">
					<tr>
					<th class="resource">ردیف</th>
					<th class="resource">مدل</th>
					<th class="resource">مارک</th>
					<th class="resource">سرعت (MHz)</th>
				</tr>
			';
			foreach($this->info->cpu as $core){
				$this->cpuTable .= "<tr>
					<td class='resource'  style='padding:5px;'>$i</td>
					<td class='resource' style='padding:5px;'>$core[Model]</td>
					<td class='resource'  style='padding:5px;'>$core[Vendor]</td>
					<td class='resource'  style='padding:5px;'>$core[MHz]</td>
				</tr>";
				$i++;	
			} 
			$this->cpuTable .= '</table>';

      }
  }
?>
