$(document).ready(function(){
	$('.image-wrapper').on('click', function(){
		event.preventDefault();
		event.stopPropagation();
		var self = $(this);
		$('.project-desc-wrapper').each(function(){
			$(this).slideUp(400);
		});

		if(self.is('visible')){
			self.next().slideUp(600);
		}
		else{
			self.next().slideDown(600);
		}
	});
});