<xsl:stylesheet version="3.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:output method="html"/>
	
  <xsl:template match="@*|node()">
    <xsl:copy>
      <xsl:apply-templates select="@*|node()"/>
    </xsl:copy>
  </xsl:template>

	<!-- strip out the masthead which looks a bit weird in the pdf version -->
  <xsl:template match="div[@class='wrapper-masthead']">
  </xsl:template>

  <xsl:template match="div[@class='wrapper-footer']">
  </xsl:template>

  <xsl:template match="head">
  </xsl:template>	
	
</xsl:stylesheet>
