/*global Swipe:false */
/*global Modernizr:false */

// document ready
$(function() {

	function templateSwap(index) {
		// swap the bottom section text
		$('.templateswap').stop().fadeTo(200,0, function() {
			var newTemplate = $('.templates').find('div[rel=' + index + ']').clone();
			$('.templateswap').html(newTemplate).fadeTo(200,1);
		});
	}
	function setCurrentAnchor(index) {
		$('a.gotopane').removeClass('currentanchor');
		$('a.gotopane[rel=' + index + ']').addClass('currentanchor');
	}
	function goToPane(index) {
		$('.pane').stop().scrollTo( 'li:eq(' + index + ')', 800, {easing:'easeInOutCubic'} );
		// set current image class
		$('.pane li').removeClass('currentimage');
		$('.pane li:eq(' + index + ')').addClass('currentimage');
	}
	
	$('.gotopane').click(function(){
		var theIndex = parseInt($(this).attr('rel'),10);
		// synchronise swipe/scrollTo slides
		if(theIndex < 3) {
			window.mySwipe.slide(theIndex, 500);
		} else if(theIndex === 4) {
			// account for no 'likes' on mobile
			window.mySwipe.slide(3, 500);
			// go home
		} else {
			window.mySwipe.slide(0, 500);
		}
		
		// hide the modal window
		$('.modalwindow').fadeTo(200, 0, function() {
			$(this).hide();
		});
		
		// resize all the image lis before doing the scrollTo
		var theWidth = $(window).width();
		$('.elements li').css('width', theWidth);
		
		// swap the bottom section text
		templateSwap(theIndex);
		
		// set current anchor class (for e.g. font-family)
		$('.gotopane').removeClass('currentanchor');
		$(this).addClass('currentanchor');
		goToPane(theIndex);
		
	});

	var theWidth = $(window).width();
	$('.elements li').css('width', theWidth);

	var theHeight = $(window).height()/1.4;
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
	var totalLikes = parseInt($('.likestemplates').attr('rel'), 10);
	// add in the likes text
	$('.next').click(function() {
		// show the 'prev' arrow if it's hidden
		$('.prev').fadeTo(200,1);
		var currentLikeIndex = $('.inner').attr('rel');
		var nextLikeIndex = parseInt(currentLikeIndex, 10) + 1;
		// if we're not at the end of the list, go up
		if (nextLikeIndex <= totalLikes) {
			var nextLike = $('.likestemplates').find('div[rel=' + nextLikeIndex + ']').clone();
			$('.inner').fadeTo(200, 0, function() {
				$('.inner').html(nextLike).fadeTo(200,1);
				// update the rel
				$('.inner').attr('rel', nextLikeIndex);
			});
		}
		if (nextLikeIndex === totalLikes) {
			$('.next').fadeTo(200,0);
		}
	});
	
	$('.prev').click(function() {
		// show the 'next' button if it's hidden
		$('.next').fadeTo(200,1);
		var currentLikeIndex = $('.inner').attr('rel');
		var prevLikeIndex = parseInt(currentLikeIndex, 10) - 1;
		// if we're not at the beginning of the list, go down
		if (prevLikeIndex > 0) {
			var prevLike = $('.likestemplates').find('div[rel=' + prevLikeIndex + ']').clone();
			$('.inner').fadeTo(200, 0, function() {
				$('.inner').html(prevLike).fadeTo(200,1);
				// update the rel
				$('.inner').attr('rel', prevLikeIndex);
			});
		}
		if (prevLikeIndex === 1) {
			$('.prev').fadeTo(200,0);
		}
	});
	
	// test if we're on a touchscreen device...
	if(Modernizr.touch) {
		// display the finger
		$('.finger').addClass('withtouch');
	
		// swiping on the bottom section moves
		// slides using TouchSwipe plugin
		$('.bottomsection').swipe({
			// swipeLeft = 'next'
			swipeLeft:function(event, direction, distance, duration, fingerCount) {
				window.mySwipe.next();
			},
			// swipeRight = 'prev'
			swipeRight:function(event, direction, distance, duration, fingerCount) {
				window.mySwipe.prev();
			}
		});
	} else {
		// if not -- add 'notouch' class to '.mobilearrows'
		$('.mobilearrows').addClass('notouch');
	}
	
	// set up breakpoints to e.g. fix 'likes' discrepancy
	// when switching to/from mobile/desktop version
	$(window).setBreakpoints({
		distinct: true,
			breakpoints: [
			768
		]
	});

	$(window).bind('exitBreakpoint768',function() {
		// if current slide index is 'likes', then
		// set slide image and text to 'home'
		if($('.rightnav li:first-child a').hasClass('currentanchor')) {
			goToPane(0);
			templateSwap(0);
			setCurrentAnchor(0);
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
		callback: function(index) {
			// hide the finger
			$('.finger').fadeTo(500,0);
			// swap the bottom section text
			// account for 'likes' not existing on mobile
			if(index === 3) {
				goToPane(4);
				templateSwap(4);
				setCurrentAnchor(4);
			} else {
				goToPane(index);
				templateSwap(index);
				setCurrentAnchor(index);
			}
			
			// show prev/next arrows...
			$('.mobilenext, .mobileprev').fadeTo(200,1);
			// but conditionally hide them if
			// we're at the end of the slides
			if(index === 0) {
				$('.mobileprev').fadeTo(200,0);
			}
			if(index === 3) {
				$('.mobilenext').fadeTo(200,0);
			}
			
			
		},
		continuous: false
	});
	
	// go to first slide when logo clicked
	$('.logo').click(function() {
		window.mySwipe.slide(0, 500);
		setCurrentAnchor(0);
	});
	
	// go to next/prev slide when mobilearrows tapped
	$('.mobilenext').click(function() {
		window.mySwipe.next();
	});
	
	$('.mobileprev').click(function() {
		window.mySwipe.prev();
	});

});

// window load
$(window).load(function() {
	// check if mySwipe exists -- once it does,
	// make change the swipe margin-top
	function doResize() {
		setTimeout(function() {
			// check if .swipe elements are visible (so swipe js is initialised)
			if($('.swipe').css('visibility') === 'visible') {
				var swipeHeight = $('#slider').height();
				var topSectionHeight = $('.topsection').height();
				var topMargin = (topSectionHeight - swipeHeight) - 3;
				$('.sliderwrapper').css({'margin-top': topMargin});
			} else {
				doResize();
			}
		}, 1);
	}
	// do it
	doResize();
});