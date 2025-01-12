<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" indent="yes" encoding="UTF-8"/>
    
    <xsl:template match="/">
        <html>
            <head>
                <title>Library Books</title>
            </head>
            <body>
                <h1>Books in the Library</h1>
                <table border="1">
                    <tr>
                        <th>Title</th>
                        <th>Author</th>
                        <th>Genre</th>
                        <th>Price</th>
                        <th>Published</th>
                    </tr>
                    <xsl:for-each select="library/book">
                        <xsl:sort select="title" order="ascending"/> <!--para ordenar por titulo-->
                            <tr>
                                <xsl:if test="price > 10">
                                    <xsl:attribute name="style">background-color: yellow; font-weight: bold;</xsl:attribute>
                                </xsl:if> <!--1. Agregar otro texto al encabezado-->
                                <xsl:if test="genre = 'Fiction'">
                                    <xsl:attribute name="style">color:blue;</xsl:attribute>
                                </xsl:if> <!--para indicar que si el genero es fiction sea letra azul-->
                                <td><xsl:value-of select="title"/></td>
                                <td><xsl:value-of select="author"/></td>
                                <td><xsl:value-of select="genre"/></td>
                                <td><xsl:value-of select="price"/></td>
                                <td><xsl:value-of select="published"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
