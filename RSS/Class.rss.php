<?php
/**
 * rss_feed (simple rss 2.0 feed creator php class)
 *
 * @author     Christos Pontikis http://pontikis.net
 * @copyright  Christos Pontikis
 * @license    MIT http://opensource.org/licenses/MIT
 * @version    0.1.0 (28 July 2013)
 *
 */
class rss_feed  {
 
  /**
   * Constructor
   *
   * @param array $a_db database settings
   * @param string $xmlns XML namespace
   * @param array $a_channel channel properties
   * @param string $site_url the URL of your site
   * @param string $site_name the name of your site
   * @param bool $full_feed flag for full feed (all topic content)
   */
  public function __construct($a_db, $xmlns, $a_channel, $site_url, $site_name, $full_feed = false) {
    // initialize
    $this->db_settings = $a_db;
    $this->xmlns = ($xmlns ? ' ' . $xmlns : '');
    $this->channel_properties = $a_channel;
    $this->site_url = $site_url;
    $this->site_name = $site_name;
    $this->full_feed = $full_feed;
  }
 
  /**
   * Generate RSS 2.0 feed
   *
   * @return string RSS 2.0 xml
   */
  public function create_feed() {
 
    $xml = '<?xml version="1.0" encoding="utf-8"?>' . "\n";
 
    $xml .= '<rss version="2.0"' . $this->xmlns . '>' . "\n";
 
    // channel required properties
    $xml .= '<channel>' . "\n";
    $xml .= '<title>' . $this->channel_properties["title"] . '</title>' . "\n";
    $xml .= '<link>' . $this->channel_properties["link"] . '</link>' . "\n";
    $xml .= '<description>' . $this->channel_properties["description"] . '</description>' . "\n";
	$xml .= '<pubDate>' . $this->channel_properties["pubDate"] . '</pubDate>' . "\n";
	$xml .= '<category>' . $this->channel_properties["category"] . '</category>' . "\n";
 
    // channel optional properties
    if(array_key_exists("language", $this->channel_properties)) {
      $xml .= '<language>' . $this->channel_properties["language"] . '</language>' . "\n";
    }
    if(array_key_exists("image_title", $this->channel_properties)) {
      $xml .= '<image>' . "\n";
      $xml .= '<title>' . $this->channel_properties["image_title"] . '</title>' . "\n";
      $xml .= '<link>' . $this->channel_properties["image_link"] . '</link>' . "\n";
      $xml .= '<url>' . $this->channel_properties["image_url"] . '</url>' . "\n";
      $xml .= '</image>' . "\n";
    }
 
    // get RSS channel items
    $now =  date("YmdHis"); // get current time  // configure appropriately to your environment
    $rss_items = $this->get_feed_items($now);
 	
    foreach($rss_items as $rss_item) {
      $xml .= '<item>' . "\n";
      $xml .= '<title>' . $rss_item['title'] . '</title>' . "\n";
    //  $xml .= '<link>' . $rss_item['link'] . '</link>' . "\n";
      $xml .= '<description>' . $rss_item['description'] . '</description>' . "\n";
    //  $xml .= '<pubDate>' . $rss_item['pubDate'] . '</pubDate>' . "\n";
 //     $xml .= '<category>' . $rss_item['category'] . '</category>' . "\n";
     // $xml .= '<source>' . $rss_item['source'] . '</source>' . "\n";
 
      if($this->full_feed) {
        $xml .= '<content:encoded>' . $rss_item['content'] . '</content:encoded>' . "\n";
      }
 
      $xml .= '</item>' . "\n";
    }
 
    $xml .= '</channel>';
 
    $xml .= '</rss>';
 
    return $xml;
  }
 
 
  /**
   * @param $rss_date
   * @param $rss_items_count
   * @internal param $rss_items
   * @return array
   */
  public function get_feed_items($rss_date, $rss_items_count = 40) {
 
    // connect to database
    $conn = new mysqli($this->db_settings["db_server"], $this->db_settings["db_user"], $this->db_settings["db_passwd"], $this->db_settings["db_name"]);
	$conn->set_charset('utf8');
 
    // check connection
    if ($conn->connect_error) {
      trigger_error('Database connection failed: '  . $conn->connect_error, E_USER_ERROR);
    }
 
    // create array with topic IDs
    $a_topic_ids = array();
    $sql = 'SELECT * FROM centers limit 10;';
     // 'WHERE date_published <= ' . "'" . $conn->real_escape_string($rss_date) . "'" .
     // 'AND date_published IS NOT NULL ' .
     // 'ORDER BY date_published DESC ' .
      
 
    $rs = $conn->query($sql);
    if($rs === false) {
      $user_error = 'Wrong SQL: ' . $sql . '<br>' . 'Error: ' . $conn->errno . ' ' . $conn->error;
      trigger_error($user_error, E_USER_ERROR);
    }
    $rs->data_seek(0);
    while($res = $rs->fetch_assoc()) {
      array_push($a_topic_ids, $res['id']);
    }
    $rs->free();
 
    // get rss items according to http://www.rssboard.org/rss-specification
    $a_rss_items = array();
    $a_rss_item = array();
    $topic = array();
    foreach($a_topic_ids as $topic_id) {
 
      // get topic properties
      $sql=' SELECT * FROM centers WHERE id=' . $topic_id;
      $rs=$conn->query($sql);
 
      if($rs === false) {
        trigger_error('Wrong SQL: ' . $sql . ' Error: ' . $conn->error, E_USER_ERROR);
      } else {
        $rs->data_seek(0);
        $topic = $rs->fetch_array(MYSQLI_ASSOC);
      }
 
      // title
      $a_rss_item['title'] = $topic['center_name'];
 
      // link
      //$a_rss_item['link'] = $this->site_url . '/' . $topic['url'];
 
      // description
      $a_rss_item['description'] = str_replace('<br>',' ',str_replace('&nbsp;',' ',$topic['detail']));
 
      /*if($topic['image']) {
        $img_url = $this->site_url . $topic['image'];
        $a_rss_item['description'] = '<img src="' . $img_url . '" hspace="5" vspace="5" align="left"/>';
      }
      $a_rss_item['description'] .= $topic['description'];*/
 
      // pubdate -> configure appropriately to your environment
    //  $date = new DateTime($topic["left_date"]);
      //$a_rss_item['pubDate'] = $date->format("D, d M Y H:i:s O");
 
      // category
      //$a_rss_item['category'] = $topic["category"];
 
      // source
      //$a_rss_item['source'] = $this->site_name;
 
      if($this->full_feed) {
        // content
        $a_rss_item['content'] = '<![CDATA[' . $topic['topic_html'] .  ']]>';
      }
 
      array_push($a_rss_items, $a_rss_item);
 
    }
 
    return $a_rss_items;
  }
 
}