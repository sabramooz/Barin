<?php

// Include the main TCPDF library (search for installation path).
$connection = mysqli_connect("localhost",'root','','barin');
		mysqli_set_charset($connection,"UTF8");
        $sql = "SELECT * FROM centers LIMIT 100";
        $result = mysqli_query($connection,$sql);
		
		
require_once('tcpdf_include.php');

// create new PDF document
$pdf = new TCPDF(PDF_PAGE_ORIENTATION, PDF_UNIT, PDF_PAGE_FORMAT, true, 'UTF-8', false);

// set document information
$pdf->SetCreator(PDF_CREATOR);
$pdf->SetAuthor('Barin co.');
$pdf->SetTitle('لیست برین');
$pdf->SetSubject('لیست برین');
$pdf->SetKeywords('لیست برین, رای وب, rayweb');

// set default header data
$pdf->SetHeaderData(PDF_HEADER_LOGO, PDF_HEADER_LOGO_WIDTH, PDF_HEADER_TITLE, PDF_HEADER_STRING);

// set header and footer fonts
$pdf->setHeaderFont(Array(PDF_FONT_NAME_MAIN, '', PDF_FONT_SIZE_MAIN));
$pdf->setFooterFont(Array(PDF_FONT_NAME_DATA, '', PDF_FONT_SIZE_DATA));

// set default monospaced font
$pdf->SetDefaultMonospacedFont(PDF_FONT_MONOSPACED);

// set margins
$pdf->SetMargins(PDF_MARGIN_LEFT, PDF_MARGIN_TOP, PDF_MARGIN_RIGHT);
$pdf->SetHeaderMargin(PDF_MARGIN_HEADER);
$pdf->SetFooterMargin(PDF_MARGIN_FOOTER);

// set auto page breaks
$pdf->SetAutoPageBreak(TRUE, PDF_MARGIN_BOTTOM);

// set image scale factor
$pdf->setImageScale(PDF_IMAGE_SCALE_RATIO);

// set some language dependent data:
$lg = Array();
$lg['a_meta_charset'] = 'UTF-8';
$lg['a_meta_dir'] = 'rtl';
$lg['a_meta_language'] = 'fa';
$lg['w_page'] = 'page';

// set some language-dependent strings (optional)
$pdf->setLanguageArray($lg);

// ---------------------------------------------------------

// set font
$pdf->SetFont('dejavusans', '', 10);

// add a page
$pdf->AddPage();

$output = '<h1>برین</h1><table width="100%" border="1">
			<tr>
				<th>ردیف</th>
				<th>نام فروشگاه</th>
				<th>مدیر</th>
				<th>موبایل</th>
				<th>تلفن</th>
			</tr>
			';
// Persian and English content
while($row = mysqli_fetch_assoc($result)){
	$output .= "<tr>
			<td>$row[id]</td>
			<td>$row[center_name]</td>
			<td>$row[center_manager]</td>
			<td>$row[mobile]</td>
			<td>$row[tel]</td>
		</tr>
	
	";
	}
$output .= "</table>";

$pdf->WriteHTML($output, true, 0, true, 0);

// ---------------------------------------------------------

//Close and output PDF document
$pdf->Output('BarinList.pdf', 'D');

//============================================================+
// END OF FILE
//============================================================+
