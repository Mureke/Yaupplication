$(document).ready(function(){

	$('.image-wrapper').on('click', function(){
		event.preventDefault();
		event.stopPropagation();
		var self = $(this);
		$('.visible-project').each(function(){
				$(this).next().slideUp(400);
		});

		if(self.hasClass('visible-project')){
			self.next().slideUp(600);
			self.removeClass('visible-project');
		}
		else{
			self.next().slideDown(600);
			self.addClass('visible-project');
		}
	});

});