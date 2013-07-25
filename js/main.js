$(function() {

	$('.gotopane').click(function(){
	
		// resize all the image lis before doing the scrollTo
		var theWidth = $(window).width();
		$('.elements li').css('width', theWidth);
	
		var theIndex = $(this).attr('rel');
		$('.gotopane').removeClass('current');
		$(this).addClass('current');
		$('.pane').stop().scrollTo( 'li:eq(' + theIndex + ')', 800, 'ease' );
		
		
		$('.pane li').removeClass('currentimage');
		$('.pane li:eq(' + theIndex + ')').addClass('currentimage');
	});

	var theWidth = $(window).width();
	$('.elements li').css('width', theWidth);

	var theHeight = $(window).height()/1.3;
	$('.topsection').css('height', theHeight);
	
	
	
	$(window).resize(function() {
		
		var currentImageHeight = $('.currentimage').height();
		console.log(currentImageHeight);
		$('.pane').css('height', currentImageHeight);
		
		
		var theWidth = $(window).width();
		// just resizd the currently focused image li
		$('.elements li.currentimage').css('width', theWidth);

		var theHeight = $(window).height()/1.3;
		$('.topsection').css('height', theHeight);
	});
	
});