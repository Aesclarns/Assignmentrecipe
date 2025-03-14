<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title>Recipes</title>
            </head>
            <body>
                <h1>Recipes</h1>
                <ul>
                    <xsl:for-each select="recipes/recipe">
                        <li>
                            <xsl:value-of select="recipeTitle"/>
                            <ul>
                                <li>
                                    <strong>Ingredients:</strong>
                                    <ul>
                                        <xsl:for-each select="ingredients/ingredient">
                                            <li><xsl:value-of select="."/></li>
                                        </xsl:for-each>
                                    </ul>
                                </li>
                                <li>
                                    <strong>Instructions:</strong>
                                    <ol>
                                        <xsl:for-each select="cookingInstructions/step">
                                            <li><xsl:value-of select="."/></li>
                                        </xsl:for-each>
                                    </ol>
                                </li>
                            </ul>
                        </li>
                    </xsl:for-each>
                </ul>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>