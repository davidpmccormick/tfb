$(function() {

	$('.gotopane').click(function(){
		var theIndex = $(this).attr('rel');
		
		// hide the modal window
		$('.modalwindow').fadeTo(200, 0, function() {
			$(this).hide();
		});
		
		// resize all the image lis before doing the scrollTo
		var theWidth = $(window).width();
		$('.elements li').css('width', theWidth);
		
		// swap the bottom section text
		$('.templateswap').stop().fadeTo(200,0, function() {
			var newTemplate = $('.templates').find('div[rel=' + theIndex + ']').clone();
			$('.templateswap').html(newTemplate).fadeTo(200,1);
		});
		
		// set current anchor class (for e.g. font-family)
		$('.gotopane').removeClass('currentanchor');
		$(this).addClass('currentanchor');
		$('.pane').stop().scrollTo( 'li:eq(' + theIndex + ')', 800, 'ease' );
		
		// set current image class
		$('.pane li').removeClass('currentimage');
		$('.pane li:eq(' + theIndex + ')').addClass('currentimage');
	});

	var theWidth = $(window).width();
	$('.elements li').css('width', theWidth);

	var theHeight = $(window).height()/1.3;
	$('.topsection').css('height', theHeight);
	
	
	// show the likes modal when the image is clicked
	$('.showlikes img').click(function() {
		$('.modalwindow').stop().fadeTo(200,1);
	});
	
	// remove the modal window when the close is clicked
	$('.closebutton').click(function() {
		$('.modalwindow').stop().fadeTo(200,0, function() {
			// hide it too, so the image can be clicked again
			$(this).hide();
		});
	});
	
	// previous and next buttons on modal
	var totalLikes = parseInt($('.likestemplates').attr('rel'));
	// add in the likes text
	$('.next').click(function() {
		var currentLikeIndex = $('.inner').attr('rel');
		var nextLikeIndex = parseInt(currentLikeIndex) + 1;
		// if we're not at the end of the list, go up
		if (nextLikeIndex <= totalLikes) {
			var nextLike = $('.likestemplates').find('div[rel=' + nextLikeIndex + ']').clone();
			$('.inner').fadeTo(200, 0, function() {
				$('.inner').html(nextLike).fadeTo(200,1);
				// update the rel
				$('.inner').attr('rel', nextLikeIndex);
			});
		}	
	});
	
	$('.prev').click(function() {
		var currentLikeIndex = $('.inner').attr('rel');
		var prevLikeIndex = parseInt(currentLikeIndex - 1);
		// if we're not at the beginning of the list, go down
		if (prevLikeIndex > 0) {
			var prevLike = $('.likestemplates').find('div[rel=' + prevLikeIndex + ']').clone();
			$('.inner').fadeTo(200, 0, function() {
				$('.inner').html(prevLike).fadeTo(200,1);
				// update the rel
				$('.inner').attr('rel', prevLikeIndex);
			});
		}
	});
	
	
	$(window).resize(function() {	
	
		// change margin-top of 'swipe'
		var swipeHeight = $('#slider').height();
		var topSectionHeight = $('.topsection').height();
		var topMargin = (topSectionHeight - swipeHeight) - 3;
		$('.sliderwrapper').css('margin-top', topMargin);
		
		var currentImageHeight = $('.currentimage').height();
		$('.pane').css('height', currentImageHeight);
		
		var theWidth = $(window).width();
		// just resize the currently focused image li
		$('.elements li.currentimage').css('width', theWidth);

		var theHeight = $(window).height()/1.3;
		$('.topsection').css('height', theHeight);
		
	});
	
	// swipe, yo!
	window.mySwipe = new Swipe(document.getElementById('slider'), {
	  callback: function(index, elem) {
			// swap the bottom section text
			$('.templateswap').stop().fadeTo(200,0, function() {
				var newTemplate = $('.templates').find('div[rel=' + index + ']').clone();
				$('.templateswap').html(newTemplate).fadeTo(200,1);
			});
	  },
	  continuous: false
	});
	
	// go to first slide when logo clicked
	$('.logo').click(function() {
		window.mySwipe.slide(0, 500);
	});	

	// check if mySwipe exists -- once it does,
	// make change the swipe margin-top
	function doResize() {
		setTimeout(function() {
			// check if .swipe elements are visible (so swipe js is initialised)
			if($('.swipe').css('visibility') === 'visible') {
				var swipeHeight = $('#slider').height();
				var topSectionHeight = $('.topsection').height();
				var topMargin = (topSectionHeight - swipeHeight) - 3;
				$('.sliderwrapper').css('margin-top', topMargin);
			} else {
				doResize();
			}
		}, 1);
	}
	// do it
	doResize();
	
	
});