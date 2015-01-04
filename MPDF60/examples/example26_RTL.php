<?php
include('../../core/core.php');
include('../../core/class.DatabaseHandler.php');
$center = '';
$query = "SELECT * from `centers` WHERE city_id = '8' LIMIT 200";
$out = DatabaseHandler::GetAll($query);

foreach($out as $row){
	$center .= '<p>'.$row['id'].'- '.$row['center_name'].': '.$row['address'].'</p>';
}		


$html = '
<style>
div.mpdf_index_main {
	font-family: xbriyaz;
}
div.mpdf_index_entry {
	font-family: xbriyaz;
}
div.mpdf_index_letter {
	font-family: xbriyaz;
}
</style>
<body dir="rtl">

<h1 style="text-align:center;">برین کارت</h1>
<h2 style="text-align:center;">لیست مراکز</h2>



<h4>تهران</h4>
'
.$center;


//==============================================================
	// Set Header and Footer
	$h = array (
  'odd' => 
  array (
    'R' => 
    array (
      'content' => '{PAGENO}',
      'font-size' => 8,
      'font-style' => 'B',
    ),
    'L' => 
    array (
      'content' => "برین کارت",
      'font-size' => 8,
      'font-style' => 'B',
    ),
    'line' => 1,
  ),
  'even' => 
  array (
    'L' => 
    array (
      'content' => '{PAGENO}',
      'font-size' => 8,
      'font-style' => 'B',
    ),
    'R' => 
    array (
      'content' => "برین کارت",
      'font-size' => 8,
      'font-style' => 'B',
    ),
    'line' => 1,
  ),
);

	$f = array (
  'odd' => 
  array (
    'L' => 
    array (
      'content' => '{DATE Y-m-d}',
      'font-size' => 8,
      'font-style' => 'BI',
    ),
    'C' => 
    array (
      'content' => '- {PAGENO} -',
      'font-size' => 8,
    ),
    'R' => 
    array (
      'content' => "برین کارت",
      'font-size' => 8,
    ),
    'line' => 1,
  ),
  'even' => 
  array (
    'L' => 
    array (
      'content' => "برین کارت",
      'font-size' => 8,
      'font-style' => 'B',
    ),
    'C' => 
    array (
      'content' => '- {PAGENO} -',
      'font-size' => 8,
    ),
    'R' => 
    array (
      'content' => '{DATE Y-m-d}',
      'font-size' => 8,
      'font-style' => 'BI',
    ),
    'line' => 1,
  ),
);

//==============================================================
// Create Index entries from random words in $html
	// Split $html into words
	$a =preg_split('/<(.*?)>/ms',$html,-1,PREG_SPLIT_DELIM_CAPTURE);
	$html = '';
	foreach($a as $i => $e) {
	   if($i%2==0) {

		$words = preg_split('/([\s,\.]+)/',$e,-1,PREG_SPLIT_DELIM_CAPTURE);
		foreach($words as $w) {

			$y =  rand(1,10); 	// every tenth word
			// If it is just a word use it as an index entry
			if (preg_match("/^(&#x[0]{0,1}6[0-9a-f][0-9a-f];){4,30}$/i",$w) && ($y > 8)) {
				$content = trim($w);
				$html .= '<indexentry content="'.$content.'" />';
			}
			$html .= $w;
		}
	   }
	   else { $html .= '<'.$e.'>'; }
	}
//==============================================================
//==============================================================
include("../mpdf.php");


$mpdf=new mPDF('','A4','','',32,25,27,25,16,13); 

$mpdf->SetDirectionality('rtl');
$mpdf->mirrorMargins = true;
$mpdf->SetDisplayMode('fullpage','two');

$mpdf->autoLangToFont = true;

$mpdf->defaultPageNumStyle = 'arabic-indic';

$mpdf->setHeader($h);
$mpdf->setFooter($f);

$mpdf->debug = true;

$stylesheet = file_get_contents('mpdfstyletables.css');
$mpdf->WriteHTML($stylesheet,1);	// The parameter 1 tells that this is css/style only and no body/html/text

$mpdf->WriteHTML($html);
$mpdf->AddPage();

//$mpdf->SetColumns(2,'J');
//$mpdf->WriteHTML($html);
//$mpdf->SetColumns(0);


//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
// INDEX
$html = '

';

$mpdf->WriteHTML($html);
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


$mpdf->Output();
exit;
//==============================================================
//==============================================================
//==============================================================


?>