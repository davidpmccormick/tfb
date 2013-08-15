<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/page-title.xsl" />
<xsl:import href="../utilities/navigation.xsl" />
<xsl:import href="../utilities/date-time.xsl" />
<xsl:import href="../includes/document_head.xsl" />
<xsl:import href="../includes/footer.xsl" />
<xsl:import href="../includes/scripts.xsl" />

<xsl:output method="html" omit-xml-declaration="yes" indent="no" />

<xsl:variable name="is-logged-in" select="/data/events/login-info/@logged-in" />

<xsl:template match="/">
	<xsl:text disable-output-escaping="yes">&lt;</xsl:text>!DOCTYPE html<xsl:text disable-output-escaping="yes">&gt;</xsl:text>
	<xsl:comment><![CDATA[[if lt IE 7]><html lang="en" class="no-js ie6"><![endif]]]></xsl:comment>
	<xsl:comment><![CDATA[[if IE 7]><html lang="en" class="no-js ie7"><![endif]]]></xsl:comment>
	<xsl:comment><![CDATA[[if IE 8]><html lang="en" class="no-js ie8"><![endif]]]></xsl:comment>
	<xsl:comment><![CDATA[[if IE 9]><html lang="en" class="no-js ie9"><![endif]]]></xsl:comment>
	<xsl:comment><![CDATA[[if IE]><![if (gt IE 9)|!(IE)]><![endif]]]></xsl:comment><html lang="en" class="no-js">
	<xsl:comment><![CDATA[[if IE]><![endif]><![endif]]]></xsl:comment>
	
	<xsl:call-template name="document_head" />
	
		<body rel="{$workspace}">
			<div class="tryportrait"><h2>Try portrait&#8230;</h2></div>
			<section id="maincontent" class="section">
				<xsl:apply-templates />
			</section>
			<xsl:call-template name="footer" />
			<xsl:call-template name="scripts" />
		</body>
		
	</html>
</xsl:template>

<xsl:strip-space elements="*" />

</xsl:stylesheet>