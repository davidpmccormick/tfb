<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:import href='../utilities/html5.xsl'/>

<xsl:template match="data">
	<section class="topsection clearfix">
		<a class="gotopane" rel="0"><div class="logo" /></a>
		<img class="bgimage" src="{$workspace}/assets/static/images/bg.png" alt="background" />
		<div class="container">
			<div class="row">
				<div class="span12">
					<nav class="mainnav hidden-phone" style="position:relative;z-index:1;">
						<ul class="leftnav">
							<li><a class="gotopane" rel="1" href="#">ABOUT</a></li>
							<li><a class="gotopane" rel="2" href="#">WORK</a></li>
						</ul>
						<ul class="rightnav">
							<li><a class="gotopane" rel="3" href="#">LIKES</a></li>
							<li><a class="gotopane" rel="4" href="#">CONTACT</a></li>
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
					<li><img src="{$workspace}/assets/static/images/4.png" alt="" /></li>
					<li><img src="{$workspace}/assets/static/images/5.png" alt="" /></li>
				</ul>
			</div>


		</div>
	</section>
	
	<section class="bottomsection clearfix">
		<div class="container">
			<div class="row">
				<div class="span12">
					<p>HELLO.<br />
					COME ON IN AND MAKE YOURSELF AT HOME.<br />
					FEEL FREE TO STAY AS LONG AS YOU LIKE.</p>
				</div>
			</div>
		</div>
	</section>
	
</xsl:template>

</xsl:stylesheet>