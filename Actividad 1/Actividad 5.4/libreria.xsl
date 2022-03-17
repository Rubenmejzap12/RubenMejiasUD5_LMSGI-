<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/"> 
    <html> 
    <body> 
    <h1>Mi biblioteca personal</h1> 
        <table> 
            <tr bgcolor="#66FFCC">
                <th>ISBN</th>
                <th>Título</th>
                <th>Autor</th>
                <th>Precio</th>
            </tr>
    <xsl:for-each select="libreria/libro">
    <tr>
    <xsl:choose>
        <xsl:when test="precio &lt; 12.50">
            <td bgcolor="#ff0000">
            <xsl:value-of select="titulo"/>
            </td>
            <td bgcolor="#ff0000">
            <xsl:value-of select="isbn"/>
            </td>
            <td bgcolor="#ff0000">
            <xsl:value-of select="precio"/>
            </td>
            <td bgcolor="#ff0000">
            <xsl:value-of select="autor"/>
            </td>
        </xsl:when>
        <xsl:when test="precio &gt; 25.50">
            <td bgcolor="#00ff00">
            <xsl:value-of select="titulo"/>
            </td>
            <td bgcolor="#00ff00">
            <xsl:value-of select="isbn"/>
            </td>
            <td bgcolor="#00ff00">
            <xsl:value-of select="precio"/>
            </td>
            <td bgcolor="#00ff00">
            <xsl:value-of select="autor"/>
            </td>
        </xsl:when>
        <xsl:otherwise>
            <td bgcolor="#0000ff">
            <xsl:value-of select="titulo"/>
            </td>
            <td bgcolor="#0000ff">
            <xsl:value-of select="isbn"/>
            </td>
            <td bgcolor="#0000ff">
            <xsl:value-of select="precio"/>
            </td>
            <td bgcolor="#0000ff">
            <xsl:value-of select="autor"/>
            </td>
        </xsl:otherwise>
    </xsl:choose>
    </tr>
    </xsl:for-each> 
    </table> 
    </body> 
    </html>
</xsl:template>
</xsl:stylesheet> 