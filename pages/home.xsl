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
		<div class="hidden-phone" style="position: absolute; right:10px; top:37px;">
			<a href="http://www.facebook.com/thefambiz" target="_blank"><span class="facebook"></span></a><br />
			<a href="http://www.twitter.com/thefambiz" target="_blank"><span class="twitter"></span></a><br />
			<a href="http://www.instagram.com/thefambiz" target="_blank"><span class="instagram"></span></a><br />
		</div>
		<div class="container">
			<div class="row">
				<div class="span12 relative">
					<div class="mobilearrows">
						<a href="#" class="mobileprev" style="display:none;"></a>
						<a href="#" class="mobilenext"></a>
					</div>
					<div class="templateswap">
						<div class="hometemplate">
							<h4 class="visible-phone">Hello</h4>
							<p><span class="visible-desktop visible-tablet">HELLO.</span></p>
							<xsl:copy-of select="text/entry/home" />
						</div>
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
			<p><span class="visible-desktop visible-tablet">HELLO.</span></p>
			<xsl:copy-of select="text/entry/home" />
		</div>
		<div rel="1" class="abouttemplate">
			<h4 class="visible-phone">About</h4>
			<xsl:copy-of select="text/entry/about" />
		</div>
		<div rel="2" class="worktemplate">
			<h4 class="visible-phone">Work</h4>
			<xsl:copy-of select="text/entry/work" />
		</div>
		<div rel="3" class="likestemplate">
			<h4 class="visible-phone">Likes</h4>
			<xsl:copy-of select="text/entry/likes" />
		</div>
		<div rel="4" class="contacttemplate">
			<h4 class="visible-phone">Contact</h4>
			<xsl:copy-of select="text/entry/contact" />
	
			<div class="phonesocialmedia visible-phone">
				<a href="http://www.facebook.com/thefambiz" target="_blank"><span class="facebook"></span></a>
				<a href="http://www.twitter.com/thefambiz" target="_blank"><span class="twitter"></span></a>
				<a href="http://www.instagram.com/thefambiz" target="_blank"><span class="instagram"></span></a>
			</div>		

		</div>
	</section>
	
	<section class="likestemplates foldup" rel="5">
		<!-- this rel = total templates, for JS --> 
		<div rel="1" class="likestemplate">
			<xsl:copy-of select="text/entry/nights-out" />
		</div>
		<div rel="2" class="likestemplate">
			<xsl:copy-of select="text/entry/culinary-projects" />
		</div>
		<div rel="3" class="likestemplate">
			<xsl:copy-of select="text/entry/hiking" />
		</div>
		<div rel="4" class="likestemplate">
			<xsl:copy-of select="text/entry/juice" />
		</div>
		<div rel="5" class="likestemplate">
			<xsl:copy-of select="text/entry/dogs" />
		</div>
	</section>


</xsl:template>

</xsl:stylesheet>