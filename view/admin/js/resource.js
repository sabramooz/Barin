// JavaScript Document
$(document).ready(function() {
    setInterval(function(){
		
         $.post('protected/libs/components/libs/CPU.php', {CPU:'1'}, function(data){
			 
			 			$("#cpu").css("width",data)
						$("#cpu span").html(data)
										   
                    });
					
         $.post('protected/libs/components/libs/RAM.php', {RAM:"1"}, function(response){
			 
						var responseArray = response.split('/');
			 
			 			$('span.total').html(responseArray[0])
						$('span.free').html(responseArray[1])
						$("#ram").css("width",responseArray[2]+'%')
						$("#ram span").html(responseArray[2])
			 
                    })								
    }, 2000)
});