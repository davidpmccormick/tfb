<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:import href='../utilities/html5.xsl'/>

<xsl:template match="data">
	<section class="topsection clearfix">
		<a class="gotopane" rel="0" href="#0"><div class="logo" /></a>
		<img class="bgimage" src="{$workspace}/assets/static/images/bg.png" alt="background" />
		<div class="container">
			<div class="row">
				<div class="span12">
					<nav class="mainnav hidden-phone" style="position:relative;z-index:1;">
						<ul class="leftnav">
							<li><a class="gotopane" rel="1" href="#1">About</a></li>
							<li><a class="gotopane" rel="2" href="#2">Work</a></li>
						</ul>
						<ul class="rightnav">
							<li><a class="gotopane" rel="3" href="#3">Likes</a></li>
							<li><a class="gotopane" rel="4" href="#4">Contact</a></li>
						</ul>
					</nav>
				</div>
			</div>
		</div>
		
		<div class="scrollcontainer" style="width:100%;">
			<div class="pane" style="width:100%">
				<ul class="elements clearfix" style="width:100000px">
					<li class="currentimage"><img src="{$workspace}/assets/static/images/1.png" alt="" /></li>
					<li><img src="{$workspace}/assets/static/images/2.png" alt="" /></li>
					<li><img src="{$workspace}/assets/static/images/3.png" alt="" /></li>
					
					<!-- likes section -->
					<li class="relative showlikes">
						<div class="modalwindow">
							<div class="closebutton">&#215;</div>
							<div class="prev">prev</div>
							<div class="next">next</div>
							<div class="inner" rel="1">
								<h2>POUNDING THE SIDEWALK</h2>
								<p>SUZANN RECENTLY COMPLETED THE L.A. MARATHON IN A RESPECTABLE 3.5 HOURS. THE BLISTERS HAVE JUST ABOUT HEALED -TAKE A LOOK AT PICTURES OF HER CROSSING THE LINE - PHEW!</p>
							</div>
						</div>
						<img src="{$workspace}/assets/static/images/4.png" alt="" />
					</li>
					<!-- end likes -->
					
					<li><img src="{$workspace}/assets/static/images/5.png" alt="" /></li>
				</ul>
			</div>
		</div>
	</section>
	
	<section class="bottomsection clearfix">
		<div class="hidden-phone" style="position: absolute; right:10px; top:10px;">
			<a href="#"><img src="{$workspace}/assets/static/images/facebook.png" /></a><br />
			<a href="#"><img src="{$workspace}/assets/static/images/twitter.png" /></a><br />
			<a href="#"><img src="{$workspace}/assets/static/images/instagram.png" /></a><br />			
		</div>
		<div class="container">
			<div class="row">
				<div class="span12">
					<div class="templateswap">
						<p>HELLO.<br />
						COME ON IN AND MAKE YOURSELF AT HOME.<br />
						FEEL FREE TO STAY AS LONG AS YOU LIKE.</p>
					</div>
					<div class="visible-phone" style="text-align:center;">
						<a href="#"><img src="{$workspace}/assets/static/images/facebook.png" /></a>
						<a href="#"><img src="{$workspace}/assets/static/images/twitter.png" /></a>
						<a href="#"><img src="{$workspace}/assets/static/images/instagram.png" /></a>		
					</div>
				</div>
			</div>
		</div>
	</section>
	
	
	<section class="templates foldup">
		<div rel="0" class="hometemplate">
			<p>HELLO.<br />
			COME ON IN AND MAKE YOURSELF AT HOME.<br />
			FEEL FREE TO STAY AS LONG AS YOU LIKE.</p>
		</div>
		<div rel="1" class="abouttemplate">
			<p>WE ARE PURVEYORS OF FINE DIGITAL MARKETING SERVICES. AS WITH EVERY FAMILY, WE KNOW THAT ONE SIZE DOES NOT FIT ALL, SO WE CREATE EXPERIENCES THAT ARE JUST RIGHT FOR YOU AND YOUR AUDIENCE THROUGH INNOVATIVE WEB AND MOBILE STRATEGIES, ENGAGING SOCIAL MEDIA INTEGRATIONS AND CREATIVE CONTENT MARKETING CAMPAIGNS.</p>
		</div>
		<div rel="2" class="worktemplate">
			<p>WE WORK WITH ENTERTAINMENT PROPERTIES AND BRANDS TO CREATE EXCITING AND ENGAGING NEW PARTNERSHIPS. WE'RE PROUD OF ALL OUR PROJECTS, BIG AND SMALL, AND THE CLIENTS THAT INSPIRE US.</p>
		</div>
		<div rel="3" class="likestemplate">
			<p>WE LOVE TO PLAY AS HARD AS WE WORK, WHETHER IT BE HIKING, WALKING THE DOGS, DOING PILATES, GOING TO MUSIC GIGS, OR SIMPLY JUICING AND COOKING AT HOME. CHECK OUT OUR BOOKSHELF TO SEE WHAT WE GET UP TO IN OUR DOWNTIME.</p>
		</div>
		<div rel="4" class="contacttemplate">
			<p>WE'D LOVE TO HAVE A CHAT, SO DROP US A LINE OR AN EMAIL AND SEE HOW WE CAN HELP YOU. OUR DOOR IS ALWAYS OPEN.<br />
TEL: 323.661.1100 EMAIL: MAIL@THEFAMILYBIZ.COM</p>
		</div>
	</section>
	
	<section class="likestemplates foldup" rel="3"> <!-- this rel = total templates, for JS -->
		<div rel="1" class="likestemplate">
			<h2>POUNDING THE SIDEWALK</h2>
			<p>SUZANN RECENTLY COMPLETED THE L.A. MARATHON IN A RESPECTABLE 3.5 HOURS. THE BLISTERS HAVE JUST ABOUT HEALED -TAKE A LOOK AT PICTURES OF HER CROSSING THE LINE - PHEW!</p>
		</div>
		<div rel="2" class="likestemplate">
			<h2>LOREM IPSUM</h2>
			<p>LOREM IPSUM DOLOR SIT AMET, CONSECTETUR ADIPISICING ELIT. RECUSANDAE ISTE ALIQUID SEQUI VOLUPTATIBUS ENIM NIHIL IN QUOD TEMPORA. OFFICIA, EXCEPTURI QUOS DOLOREM HARUM CUM NEQUE COMMODI! INVENTORE OBCAECATI DELENITI QUIDEM.</p>
		</div>
		<div rel="3" class="likestemplate">
			<h2>DOLOR SIT AMET</h2>
			<p>CONSECTETUR ADIPISICING ELIT. NECESSITATIBUS, APERIAM, OBCAECATI, VOLUPTAS, ULLAM INVENTORE ESSE EUM VELIT REM MINUS EST ID SOLUTA MODI! SUNT, QUISQUAM NUMQUAM CULPA NATUS IURE VOLUPTATE.</p>
		</div>
	</section>


</xsl:template>

</xsl:stylesheet>