/*global Swipe:false */
/*global Modernizr:false */

// global function -- to be used on
// document ready and window load
function slideOffIntro() {
		$('.introimagecontainer').removeClass('start').animate({left: '-100%', right: '100%'}, 400, 'easeInOutQuart', function() {
			$('.introimagecontainer').remove();
		});
	}

// document ready
$(function() {

	// if we load in landscape on a small screen, encourage portrait viewing... only if the device can reorient
	if(window.orientation) {
		if($(window).width() < 650 && $(window).width() > $(window).height()) {
			$('body').addClass('hiddencontent');
			$('#maincontent').css('visibility', 'hidden');
		}
	}

	function tfbResize() {
		// change margin-top of 'swipe'
		var swipeHeight = $('#slider').height();
		var topSectionHeight = $('.topsection').height();
		var topMargin = (topSectionHeight - swipeHeight) - 50;
		$('.sliderwrapper').css('margin-top', topMargin);

		var currentImageHeight = $('.currentimage').height();
		$('.pane').css('height', currentImageHeight);

		var theWidth = $(window).width();

		// just resize the currently focused image li
		$('.elements li.currentimage').css('width', theWidth);

		var theHeight = $(window).height()/1.33;
		$('.topsection').css('height', theHeight);

	}

	function tfbReorient() {
		// need to wait for a bit (500ms) to allow for the reorient
		// animation to complete before remeasuring dimensions
		setTimeout(function() {
			// change margin-top of 'swipe'
			var swipeHeight = $('#slider').height();
			var topSectionHeight = $('.topsection').height();
			var topMargin = (topSectionHeight - swipeHeight) - 50;
			$('.sliderwrapper').css('margin-top', topMargin);

			var currentImageHeight = $('.currentimage').height();
			$('.pane').css('height', currentImageHeight);

			var theWidth = $(window).width();

			// just resize the currently focused image li
			$('.elements li.currentimage').css('width', theWidth);

			var theHeight = $(window).height()/1.33;
			$('.topsection').css('height', theHeight);
		}, 500);

	}

	function templateSwap(index) {
		// swap the bottom section text
		$('.templateswap').stop().fadeTo(200,0, function() {
			var newTemplate = $('.templates').find('div[data-rel=' + index + ']').clone();
			$('.templateswap').html(newTemplate).fadeTo(200,1);
		});
	}
	function setCurrentAnchor(index) {
		$('a.gotopane').removeClass('currentanchor');
		$('a.gotopane[data-rel=' + index + ']').addClass('currentanchor');
	}
	function goToPane(index) {
		$('.pane').stop().scrollTo( 'li:eq(' + index + ')', 800, {easing:'easeInOutCubic'} );
		// set current image class
		$('.pane li').removeClass('currentimage');
		$('.pane li:eq(' + index + ')').addClass('currentimage');
	}

	// make sure the intro image is loaded before it's faded up
	var workspaceDir = $('body').attr('data-rel');
	$('<img/>').attr('src',  workspaceDir + '/assets/static/images/intro.png').load(function() {
		$('.introimage').fadeTo(200,1);
	});

	$('.introimagecontainer').click(function() {
		slideOffIntro();
	});

	$('.gotopane').click(function(){
		var theIndex = parseInt($(this).attr('data-rel'),10);
		// if the logo's out of shot, move it back in (not on small screens)
		if(($('.logo').css('top') !== '15px') && ($(window).width() > 480) ) {
			$('.logo').stop().animate({'top': '15px'}, 500);
		}
		// synchronise swipe/scrollTo slides
		if(theIndex < 3) {
			window.mySwipe.slide(theIndex, 500);
		} else if (theIndex === 3) {
			// move up the logo to stop it clashing
			var imagesFromTop = $('.scrollcontainer').offset().top;
			if (imagesFromTop < 120) {
				$('.logo').stop().animate({'top': '-200px'}, 500);
			}
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

	var theHeight = $(window).height()/1.33;
	$('.topsection').css('height', theHeight);


	// show the likes modal when the image is clicked
	$('.showlikes').click(function() {
		var totalLikes = parseInt($('.likestemplates').attr('data-rel'), 10);

		var likeNumber = parseInt($(this).attr('data-rel'), 10);

		// hide prev/next if we're at the end
		if (likeNumber === 1) {
			$('.prev').hide();
			$('.next').show();
		} else if (likeNumber === totalLikes) {
			$('.next').hide();
			$('.prev').show();
		} else {
			$('.prev').show();
			$('.next').show();
		}
		var initialLike = $('.likestemplates').find('div[data-rel=' + likeNumber + ']').clone();
		// set the correc like template based on which book was clicked

		$('.inner').attr('data-rel', likeNumber).fadeTo(200,0, function() {
			$('.inner').html(initialLike).fadeTo(200,1);
			$('.modalwindow').stop().fadeTo(200,0.9);
		});
	});

	// remove the modal window when the close is clicked
	$('.closebutton').click(function() {
		$('.modalwindow').stop().fadeTo(200,0, function() {
			// hide it too, so the image can be clicked again
			$(this).hide();
		});
	});

	// previous and next buttons on modal
	var totalLikes = parseInt($('.likestemplates').attr('data-rel'), 10);
	// add in the likes text
	$('.next').click(function() {
		// show the 'prev' arrow if it's hidden
		$('.prev').show();
		var currentLikeIndex = $('.inner').attr('data-rel');
		var nextLikeIndex = parseInt(currentLikeIndex, 10) + 1;
		// if we're not at the end of the list, go up
		if (nextLikeIndex <= totalLikes) {
			var nextLike = $('.likestemplates').find('div[data-rel=' + nextLikeIndex + ']').clone();
			$('.inner').fadeTo(200, 0, function() {
				$('.inner').html(nextLike).fadeTo(200,1);
				// update the rel
				$('.inner').attr('data-rel', nextLikeIndex);
			});
		}
		if (nextLikeIndex === totalLikes) {
			$('.next').hide();
		}
	});

	$('.prev').click(function() {
		// show the 'next' button if it's hidden
		$('.next').show();
		var currentLikeIndex = $('.inner').attr('data-rel');
		var prevLikeIndex = parseInt(currentLikeIndex, 10) - 1;
		// if we're not at the beginning of the list, go down
		if (prevLikeIndex > 0) {
			var prevLike = $('.likestemplates').find('div[data-rel=' + prevLikeIndex + ']').clone();
			$('.inner').fadeTo(200, 0, function() {
				$('.inner').html(prevLike).fadeTo(200,1);
				// update the rel
				$('.inner').attr('data-rel', prevLikeIndex);
			});
		}
		if (prevLikeIndex === 1) {
			$('.prev').hide();
		}
	});

	// test if we're on a touchscreen device...
	if(Modernizr.touch) {
		// display the finger and white bg if we're on small screens
		if($(window).width() < 768) {
			$('.finger, .transparentwhite').addClass('withtouch');
		}

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

	// resize logic
	$(window).resize(function() {
		tfbResize();
	});
	// orientation change logic

	$(window).bind( 'orientationchange', function(e){
		// if it's small width and in portrait, hide the content
		if($(window).width() < 650 && $(window).width() > $(window).height()) {
			$('body').addClass('hiddencontent');
			$('#maincontent').css('visibility', 'hidden');
		// if we're reorienting to portrait and the content's hidden, redisplay it
		} else if($('body').hasClass('hiddencontent') && $(window).width() < $(window).height()) {
			$('body').removeClass('hiddencontent');
			$('#maincontent').css('visibility', 'visible');
		}
		tfbReorient();

	});



	// swipe, yo!
	window.mySwipe = new Swipe(document.getElementById('slider'), {
		callback: function(index) {
			// hide the finger
			$('.finger, .transparentwhite').fadeTo(500,0);
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

	// after two seconds, slide out the
	// intro slide (if necessary)
	setTimeout(function() {
		if($('.introimagecontainer').hasClass('start')) {
			slideOffIntro();
		}
	}, 3000);

	// after 4.5 seconds, fade
	// out the overlay finger
	setTimeout(function() {
		$('.finger, .transparentwhite').fadeTo(200,0, function() {
			$('.finger, .transparentwhite').remove();
		});
	}, 5500);

	// check if mySwipe exists -- once it does,
	// make change the swipe margin-top
	function doResize() {
		setTimeout(function() {
			// check if .swipe elements are visible (so swipe js is initialised)
			if($('.swipe').css('visibility') === 'visible') {
				var swipeHeight = $('#slider').height();
				var topSectionHeight = $('.topsection').height();
				var topMargin = (topSectionHeight - swipeHeight) - 50;
				$('.sliderwrapper').css({'margin-top': topMargin});
			} else {
				doResize();
			}
		}, 1);
	}
	// do it
	doResize();
});