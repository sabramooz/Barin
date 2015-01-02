<?php
  class Product
  {
     public $comments = '';
	 public $result;
	 public $city;
	 public $images,$site_address;
	 
      function __construct()
      {
		  ########### define for htaccess #############
		  $this->site_address = SITE_ADDRESS;
		  #############################################
		  
		  
		  $this->result = DatabaseHandler::getRow("SELECT * FROM centers WHERE id = '$_GET[id]' ;");
		  $this->images = DatabaseHandler::getAll("SELECT * FROM images WHERE center_id = '$_GET[id]' ;");  
			
			
			
		 $this->city = $_GET['city'];
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
			
		  if(isset($_POST['sub_comment'])){
			  $date = time();
				$send_reply_query = "INSERT INTO `comment`(`id`, `text`, `user_id`, `parent_id`, 
									`date`, `activate`) VALUES ('','$_POST[reply]','$_POST[user_id]','$_POST[parent_id]','$date',0)";
				DatabaseHandler::Execute($send_reply_query);
			}
			
			if(isset($_POST['comment'])){
			    $date = time();
				$send_reply_query = "INSERT INTO `comment`(`id`, `text`, `user_id`, `parent_id`, 
									`date`, `activate`) VALUES ('','$_POST[reply]','$_POST[user_id]','0','$date',0)";
				DatabaseHandler::Execute($send_reply_query);
			}
		  
		  
		  $comment_query = databasehandler::getAll('SELECT users.id ,users.first_name , users.mail , comment.id , comment.text ,
		  											 comment.user_id , comment.parent_id, comment.activate , comment.date FROM `users`
														INNER JOIN `comment`
															ON users.id = comment.user_id');
       foreach($comment_query as $row){
		   if($row['parent_id'] == 0 && $row['activate'] == 1){
			   //$row['date'] = jdate('Y/d/m',$row['date']);
			   $row['date'] = date('c',$row['date']);
				$this->comments .= '
					<form method="post">
						<div class="user-image col-sm-1 pull-right">
							<img src="'.SITE_ADDRESS.'view/front/images/human.jpg" class="img-responsive"></div>
						<div class="user-comment col-sm-11 pull-right">
							<h4 class="user-detail">'.$row['first_name'].'</h4>
							<p class="comment-date timeago" dir="rtl" title="'.$row['date'].'"></p>
							<p class="comment-main">'.$row['text'].'</p>
							<input type="hidden" value="'.$row['id'].'" name="parent_id">
							<input type="hidden" value="'.$row['user_id'].'" name="user_id">';
			  		
					$sub_comment_query = "SELECT users.id ,users.first_name , users.mail , comment.id , comment.text ,
		  											 comment.user_id , comment.parent_id, comment.activate , comment.date
													  FROM comment
															INNER JOIN `users`
															ON users.id = comment.user_id
															 WHERE parent_id = '$row[id]'";
															 
					$sub_comment = DatabaseHandler::GetAll($sub_comment_query);
					
					foreach($sub_comment as $sub_comment_row){
						//$sub_comment_row['date'] = jdate('Y/d/m',$sub_comment_row['date']);
						$sub_comment_row['date'] = date('c',$sub_comment_row['date']);
							if($sub_comment_row['activate']==1){
								$this->comments .= '<div class="comment-reply">
														<h4 class="user-detail">'.$sub_comment_row['first_name'].'</h4>
														<p class="comment-date timeago" dir="rtl" title="'.$sub_comment_row['date'].'"></p>
														<p >'.$sub_comment_row['text'].'</p><br>
													</div>';
							}
						}
								
					$this->comments .= '
							<textarea class="form-control" name="reply"></textarea>
							<input type="submit" class="btn btn-success" name="sub_comment" value="ارسال">
						</div> 
					</form> 
					<div class="clearfix"></div>
					<hr>';
		   }
	   }
    
      }
  }
?>