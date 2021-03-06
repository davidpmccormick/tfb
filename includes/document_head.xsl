<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:template name="document_head">
		<head>
			<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
			<meta charset="utf-8" />
			<meta name="description" content="Purveyors of fine digital and marketing services for brands, artists, and filmmakers. We believe that offline is online, and help clients tell their story in the digital space." />

			<title><xsl:call-template name="page-title"/></title>

			<link rel="icon" type="images/png" href="{$workspace}/assets/images/favicon.png" />
			<link rel="stylesheet" media="screen" href="{$workspace}/css/main.css" />
			<script src="{$workspace}/js/libs/modernizr.min.js"></script>

			<xsl:comment>
				<![CDATA[[if (gte IE 6)&(lte IE 8)]>

					<script type="text/javascript" src="]]><xsl:value-of select="$root"/><![CDATA[/workspace/components/selectivizr/selectivizr.js"></script>

					<script type="text/javascript" src="]]><xsl:value-of select="$root"/><![CDATA[/workspace/js/libs/respond.min.js"></script>



				<![endif]]]>
			</xsl:comment>

		</head>
	</xsl:template>

</xsl:stylesheet>
