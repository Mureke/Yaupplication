$(document).on('page:change', function(){

	$('.image-wrapper').on('click', function(){
		event.preventDefault();
		event.stopPropagation();
		var self = $(this);

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