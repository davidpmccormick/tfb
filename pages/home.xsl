<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:import href='../utilities/html5.xsl'/>

<xsl:template match="data">

	<div class="introimagecontainer start">
		<div class="introimage"></div>
	</div>
	
	
	<section class="topsection clearfix">
		<div class="gotopane" rel="0" href="#0"><div class="logo" /></div>
		<img class="bgimage" src="{$workspace}/assets/static/images/bg.png" alt="background" />
		<div class="container">
			<div class="row">
				<div class="span12">
					<nav class="mainnav hidden-phone" style="position:relative;z-index:1;">
						<ul class="leftnav">
							<li><a class="gotopane" rel="1" href="#">About</a></li>
							<li><a class="gotopane" rel="2" href="#">Work</a></li>
						</ul>
						<ul class="rightnav">
							<li><a class="gotopane" rel="3" href="#">Likes</a></li>
							<li><a class="gotopane" rel="4" href="#">Contact</a></li>
						</ul>
					</nav>
				</div>
			</div>
		</div>
		
		<!-- smaller screen slides -->
		<section class="sliderwrapper">
			<div id="slider" class="theslider swipe visible-phone">
			  <div class='swipe-wrap'>
			    <div><img src="{$workspace}/assets/static/images/1.png" alt="" /></div>
			    <div><img src="{$workspace}/assets/static/images/2.png" alt="" /></div>
			    <div><img src="{$workspace}/assets/static/images/3.png" alt="" /></div>
			    <div><img src="{$workspace}/assets/static/images/5.png" alt="" /></div>
			  </div>
			</div>
		</section>
		<!-- end smaller screen slides -->
		
		<!-- larger screen slides -->
		<section class="scrollcontainer hidden-phone-dmc" style="width:100%;">
			<div class="pane" style="width:100%">
				<ul class="elements clearfix" style="width:100000px">
					<li class="currentimage"><img src="{$workspace}/assets/static/images/1.png" alt="" /></li>
					<li><img src="{$workspace}/assets/static/images/2.png" alt="" /></li>
					<li><img src="{$workspace}/assets/static/images/3.png" alt="" /></li>
					
					<!-- likes section -->
					<li class="relative">
					
						<div class="showlikes" rel="1"><img src="{$workspace}/assets/static/images/transparent.gif" /></div>
						<div class="showlikes" rel="2"><img src="{$workspace}/assets/static/images/transparent.gif" /></div>
						<div class="showlikes" rel="3"><img src="{$workspace}/assets/static/images/transparent.gif" /></div>
						<div class="showlikes" rel="4"><img src="{$workspace}/assets/static/images/transparent.gif" /></div>
						<div class="showlikes" rel="5"><img src="{$workspace}/assets/static/images/transparent.gif" /></div>
						<div class="showlikes" rel="6"><img src="{$workspace}/assets/static/images/transparent.gif" /></div>
						<div class="showlikes" rel="7"><img src="{$workspace}/assets/static/images/transparent.gif" /></div>
						<div class="showlikes" rel="8"><img src="{$workspace}/assets/static/images/transparent.gif" /></div>
						<div class="showlikes" rel="9"><img src="{$workspace}/assets/static/images/transparent.gif" /></div>
						
						<div class="modalwindow">
							<div class="closebutton"></div>
							<div class="prev"></div>
							<div class="next"></div>
							<div class="inner" rel="">
								<!-- filled from likestemplates -->
							</div>
						</div>
						<img src="{$workspace}/assets/static/images/4.png" alt="" />
					</li>
					<!-- end likes -->
					
					<li><img src="{$workspace}/assets/static/images/5.png" alt="" /></li>
				</ul>
			</div>
		</section>
		<!-- end larger screen slides -->
		
	</section>
	
	<section class="bottomsection clearfix">
		<div class="hidden-phone" style="position: absolute; right:10px; top:10px;">
			<a href="#"><img src="{$workspace}/assets/static/images/facebook.png" /></a><br />
			<a href="#"><img src="{$workspace}/assets/static/images/twitter.png" /></a><br />
			<a href="#"><img src="{$workspace}/assets/static/images/instagram.png" /></a><br />			
		</div>
		<div class="container">
			<div class="row">
				<div class="span12 relative">
					<div class="mobilearrows">
						<a href="#" class="mobileprev" style="display:none;"></a>
						<a href="#" class="mobilenext"></a>
					</div>
					<div class="templateswap">
						<h4 class="visible-phone">Hello</h4>
						<p><span class="visible-desktop visible-tablet">HELLO.<br /></span>
						COME ON IN AND MAKE YOURSELF AT HOME.<br />
						FEEL FREE TO STAY AS LONG AS YOU LIKE.</p>
					</div>
					<div class="finger">
						<img src="{$workspace}/assets/static/images/finger.png" alt="finger" />
					</div>
				</div>
			</div>
		</div>
	</section>
	
	
	<section class="templates foldup">
		<div rel="0" class="hometemplate">
			<h4 class="visible-phone">Hello</h4>
			<p><span class="visible-desktop visible-tablet">HELLO.<br /></span>
			COME ON IN AND MAKE YOURSELF AT HOME.<br />
			FEEL FREE TO STAY AS LONG AS YOU LIKE.</p>
		</div>
		<div rel="1" class="abouttemplate">
			<h4 class="visible-phone">About</h4>
			<p>AS WITH EVERY FAMILY, WE KNOW THAT ONE SIZE DOES NOT FIT ALL, SO WE CREATE DIGITAL MARKETING EXPERIENCES THAT ARE JUST RIGHT FOR YOU AND YOUR AUDIENCE.</p>
		</div>
		<div rel="2" class="worktemplate">
			<h4 class="visible-phone">Work</h4>
			<p>WE HAVE WORKED WITH ENTERTAINMENT PROPERTIES AND BRANDS SUCH AS UNIVERSAL PICTURES, ULTRA RECORDS, THE LIGHT GROUP AND MINISTRY OF SOUND TO CREATE INTERACTIVE, ENGAGING CONTENT AND DIGITAL MARKETING CAMPAIGNS.</p>
		</div>
		<div rel="3" class="likestemplate">
			<h4 class="visible-phone">Likes</h4>
			<p>WE LOVE TO PLAY AS HARD AS WE WORK, WHETHER IT BE HIKING, WALKING THE DOGS, DOING PILATES, GOING TO MUSIC GIGS, OR SIMPLY JUICING AND COOKING AT HOME. CHECK OUT OUR BOOKSHELF TO SEE WHAT WE GET UP TO IN OUR DOWNTIME.</p>
		</div>
		<div rel="4" class="contacttemplate">
			<h4 class="visible-phone">Contact</h4>
			<p>WE'D LOVE TO HAVE A CHAT, SO DROP US A LINE OR AN EMAIL AND SEE HOW WE CAN HELP YOU. OUR DOOR IS ALWAYS OPEN.<br />
TEL: 323.661.1100 EMAIL: <a href="mailto:mail@thefamilybiz.com">MAIL@THEFAMILYBIZ.COM</a></p>

			<div class="phonesocialmedia visible-phone">
				<a href="#"><img src="{$workspace}/assets/static/images/facebook.png" /></a>
				<a href="#"><img src="{$workspace}/assets/static/images/twitter.png" /></a>
				<a href="#"><img src="{$workspace}/assets/static/images/instagram.png" /></a>
			</div>		

		</div>
	</section>
	
	<section class="likestemplates foldup" rel="9">
		<!-- this rel = total templates, for JS --> 
		<div rel="1" class="likestemplate">
			<h2>POUNDING THE SIDEWALK</h2>
			<p>SUZANN RECENTLY COMPLETED THE L.A. MARATHON IN A RESPECTABLE 3.5 HOURS. THE BLISTERS HAVE JUST ABOUT HEALED -TAKE A LOOK AT <a href="#">PICTURES OF HER CROSSING THE LINE</a> - PHEW!</p>
		</div>
		<div rel="2" class="likestemplate">
			<h2>LOREM IPSUM</h2>
			<p>LOREM IPSUM DOLOR SIT AMET, CONSECTETUR ADIPISICING ELIT. RECUSANDAE ISTE ALIQUID SEQUI VOLUPTATIBUS ENIM NIHIL IN QUOD TEMPORA. OFFICIA, EXCEPTURI QUOS DOLOREM HARUM CUM NEQUE COMMODI! INVENTORE OBCAECATI DELENITI QUIDEM.</p>
		</div>
		<div rel="3" class="likestemplate">
			<h2>DOLOR SIT AMET</h2>
			<p>CONSECTETUR ADIPISICING ELIT. NECESSITATIBUS, APERIAM, OBCAECATI, VOLUPTAS, ULLAM INVENTORE ESSE EUM VELIT REM MINUS EST ID SOLUTA MODI! SUNT, QUISQUAM NUMQUAM CULPA NATUS IURE VOLUPTATE.</p>
		</div>
		<div rel="4" class="likestemplate">
			<h2>NUMBER FOUR</h2>
			<p>CONSECTETUR ADIPISICING ELIT. NECESSITATIBUS, APERIAM, OBCAECATI, VOLUPTAS, ULLAM INVENTORE ESSE EUM VELIT REM MINUS EST ID SOLUTA MODI! SUNT, QUISQUAM NUMQUAM CULPA NATUS IURE VOLUPTATE.</p>
		</div>
		<div rel="5" class="likestemplate">
			<h2>THE FIFTH</h2>
			<p>CONSECTETUR ADIPISICING ELIT. NECESSITATIBUS, APERIAM, OBCAECATI, VOLUPTAS, ULLAM INVENTORE ESSE EUM VELIT REM MINUS EST ID SOLUTA MODI! SUNT, QUISQUAM NUMQUAM CULPA NATUS IURE VOLUPTATE.</p>
		</div>
		<div rel="6" class="likestemplate">
			<h2>SIX!</h2>
			<p>CONSECTETUR ADIPISICING ELIT. NECESSITATIBUS, APERIAM, OBCAECATI, VOLUPTAS, ULLAM INVENTORE ESSE EUM VELIT REM MINUS EST ID SOLUTA MODI! SUNT, QUISQUAM NUMQUAM CULPA NATUS IURE VOLUPTATE.</p>
		</div>
		<div rel="7" class="likestemplate">
			<h2>NUMBER SEVEN</h2>
			<p>CONSECTETUR ADIPISICING ELIT. NECESSITATIBUS, APERIAM, OBCAECATI, VOLUPTAS, ULLAM INVENTORE ESSE EUM VELIT REM MINUS EST ID SOLUTA MODI! SUNT, QUISQUAM NUMQUAM CULPA NATUS IURE VOLUPTATE.</p>
		</div>
		<div rel="8" class="likestemplate">
			<h2>THIS IS EIGHT</h2>
			<p>CONSECTETUR ADIPISICING ELIT. NECESSITATIBUS, APERIAM, OBCAECATI, VOLUPTAS, ULLAM INVENTORE ESSE EUM VELIT REM MINUS EST ID SOLUTA MODI! SUNT, QUISQUAM NUMQUAM CULPA NATUS IURE VOLUPTATE.</p>
		</div>
		<div rel="9" class="likestemplate">
			<h2>LAST ONE: NINE</h2>
			<p>CONSECTETUR ADIPISICING ELIT. NECESSITATIBUS, APERIAM, OBCAECATI, VOLUPTAS, ULLAM INVENTORE ESSE EUM VELIT REM MINUS EST ID SOLUTA MODI! SUNT, QUISQUAM NUMQUAM CULPA NATUS IURE VOLUPTATE.</p>
		</div>
	</section>


</xsl:template>

</xsl:stylesheet>