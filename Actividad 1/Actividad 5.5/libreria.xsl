<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="libreria">
    <h2>Mi Biblioteca personal</h2>
    <table>
        <tr bgcolor="#887788">
            <th>ISBN</th>
            <th>Título</th>
            <th>Autor</th>
            <th>Precio</th>
            <th>numPaginas</th>
        </tr>
        <xsl:apply-templates select="libro"/>
    </table>
</xsl:template>

<xsl:template match="libro">
    <tr>
        <td>
            <xsl:apply-templates select="ISBN"/></td>
            <xsl:apply-templates select="titulo"/>
            <xsl:apply-templates select="autor"/>
            <td><xsl:value-of select="precio"/> </td>
        <xsl:choose>
            <xsl:when test="numPaginas &gt; 150">
                <xsl:apply-templates select="numPaginas"/>
            </xsl:when>
            <xsl:otherwise>
                <td>
                    <xsl:value-of select="numPaginas"/>
                </td>
            </xsl:otherwise>
        </xsl:choose>
    </tr>
</xsl:template>

<xsl:template match="titulo">
    <td bgcolor="#C0C0C0">
        <xsl:value-of select="."/>
    </td>
</xsl:template>

<xsl:template match="autor">
    <td bgcolor="#C0C0C0">
        <xsl:value-of select="."/>
    </td>
</xsl:template>

<xsl:template match="numPaginas">
    <td bgcolor="#FF0000">
        <xsl:value-of select="."/>
    </td>
</xsl:template>
</xsl:stylesheet>