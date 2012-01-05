$(document).ready(function(){
	
	$("#header ul li a").hover(function() { //When trigger is hovered
		
		//Following events are applied to the subnav itself (moving subnav up and down)
		$(this).parent().find("ul.subnav").fadeIn('fast'); //Drop down the subnav on hover

		$(this).parent().hover(function() {
		}, function(){	
			$(this).parent().find("ul.subnav").fadeOut('fast'); //When the mouse hovers out of the subnav, move it back up
		});
	});

});
