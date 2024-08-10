<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html" indent="yes"/>
    
    <xsl:template match="/">
        <html>
            <head>
                <title>EUPHORIA: Event Management System</title>
                <style>
                    table {
                        width: 100%;
                        border-collapse: collapse;
                    }
                    th, td {
                        border: 1px solid black;
                        padding: 8px;
                        text-align: left;
                    }
                    th {
                        background-color: #f2f2f2;
                    }
                </style>
            </head>
            <body>
                <h1>EUPHORIA: Event Management System</h1>
                <table>
                    <tr>
                        <th>Event ID</th>
                        <th>Name</th>
                        <th>Date</th>
                        <th>Location</th>
                        <th>Participants</th>
                        <th>Organizer</th>
                        <th>Duration (Days)</th>
                    </tr>
                    <xsl:for-each select="Euphoria/Event">
                        <tr>
                            <td><xsl:value-of select="@id"/></td>
                            <td><xsl:value-of select="Name"/></td>
                            <td><xsl:value-of select="Date"/></td>
                            <td><xsl:value-of select="Location"/></td>
                            <td><xsl:value-of select="Participants"/></td>
                            <td><xsl:value-of select="Organizer"/></td>
                            <td><xsl:value-of select="Duration"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
