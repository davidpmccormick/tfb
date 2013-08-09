<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:template name="document_head">
		<head>
			<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
			<meta charset="utf-8" />
			<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
			<meta name="title" content="{$page-title}" />
			<meta name="description" content="" />
			<meta name="tags" content="" />
			
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
