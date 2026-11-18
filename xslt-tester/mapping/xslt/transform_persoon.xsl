<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                exclude-result-prefixes="xs"
                version="2.0">

  <xsl:output method="xml" indent="yes"/>

  <xsl:template match="/">
      <xsl:variable name="werkadres" select="persoon/adressen/adres[@type='werk']"/>
      <brief>
          <adresregel_1><xsl:value-of select="concat(persoon/voornaam, ' ', persoon/achternaam)"/></adresregel_1>
          <adresregel_2><xsl:value-of select="concat($werkadres/straat, ' ', $werkadres/huisnummer)"/></adresregel_2>
          <adresregel_3><xsl:value-of select="concat($werkadres/postcode, ' ', $werkadres/plaats)"/></adresregel_3>
      </brief>
  </xsl:template>
</xsl:stylesheet>