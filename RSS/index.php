<?php
error_reporting(E_ALL);
	ini_set('display_errors','1');

include '../protected/configs/config.php';
 $a_db = array(
  "db_server" => DB_SERVER,
  "db_name" => DB_DATABASE,
  "db_user" => DB_USERNAME,
  "db_passwd" => DB_PASSWORD,
);

header('Content-type: application/xml');
require_once 'Class.rss.php'; // configure appropriately
// $xmlns = '';
// set more namespaces if you need them
$xmlns = 'xmlns:content="http://purl.org/rss/1.0/modules/content/"
    xmlns:wfw="http://wellformedweb.org/CommentAPI/"
    xmlns:dc="http://purl.org/dc/elements/1.1/"
    xmlns:sy="http://purl.org/rss/1.0/modules/syndication/"';
 
// configure appropriately - pontikis.net is used as an example
$dateChannel = new DateTime(date("D, d M Y H:i:s e"));
$test = $dateChannel->format("D, d M Y H:i:s e");
$a_channel = array(
  "title" => "برین کارت",
  "link" => "http://www.barincard.com",
  "description" => "مراکز طرف قرارداد",
  "language" => "en",
  "pubDate" => $test,
   "category" => ""
 // "image_title" => "pontikis.net",
  //"image_link" => "http://www.pontikis.net",
  //"image_url" => "http://www.pontikis.net/feed/rss.png",
);
$site_url = SITE_ADDRESS.'rss/index.php'; // configure appropriately
$site_name = 'Barin Card'; // configure appropriately
 
$rss = new rss_feed($a_db,$xmlns, $a_channel, $site_url, $site_name);
echo $rss->create_feed();?>