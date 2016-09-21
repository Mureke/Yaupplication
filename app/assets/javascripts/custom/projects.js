$(document).ready(function(){
	$('.image-wrapper').on('click', function(){
		event.preventDefault();
		var self = $(this);
		$('.project-desc-wrapper').each(function(){
			$(this).slideUp(400);
			$(this).removeClass('open-project');
		});
		if(self.hasClass('open-project')){
			self.removeClass('open-project');
			self.next().slideUp(600);
		}
		else{
		self.addClass('open-project');
		self.next().slideDown(600);
		}
	});
});