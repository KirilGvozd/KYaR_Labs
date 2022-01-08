<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/root">
        <html>
            <body>
                <h2>Student list</h2>
                <table border="1">
                    <tr>
                        <th>First</th>
                        <th>Second</th>
                        <th>Third</th>
                    </tr>
                    <xsl:for-each select="student">
                    <tr>
                        <td><xsl:value-of select="firstname"/></td>
                        <td><xsl:value-of  select="lastname"/></td>
                        <xsl:choose>
                            <xsl:when test="mark &gt; 8">
                                <td bgcolor="green"><xsl:value-of select="mark"/></td>
                            </xsl:when>
                            <xsl:when test="mark &gt; 4">
                                <td bgcolor="white"><xsl:value-of select="mark"/></td>
                            </xsl:when>
                            <xsl:when test="mark &gt; -1">
                                <td bgcolor="red"><xsl:value-of select="mark"/></td>
                            </xsl:when>
                            <xsl:otherwise>
                                <td bgcolor="white"><xsl:value-of select="mark"/></td>
                            </xsl:otherwise>
                        </xsl:choose>
                    </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>