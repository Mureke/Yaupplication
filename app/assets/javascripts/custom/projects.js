$(document).ready(function(){
	$('.image-wrapper').on('click', function(){
		event.preventDefault();
		var self = $(this);
		$('.project-desc-wrapper').each(function(){
			$(this).slideUp(400);
		});

		self.next().slideDown(600);
	});
});