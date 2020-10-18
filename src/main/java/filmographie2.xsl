<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : filmographie2.xsl
    Created on : 12 octobre 2020, 16:43
    Author     : Marie
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>

    <!-- TODO customize transformation rules 
         syntax recommendation http://www.w3.org/TR/xslt 
    -->
    <xsl:template match="/">
        <html>
            <head>
                 <link rel="stylesheet" type="text/css" href="filmographie.css"/>
                <title>filmographie2.xsl</title>
            </head>
            <body>
                <hi>Cinématographie</hi>
                <table>
                    <tr>
                        <td> </td>
                        <td>Image</td>
                        <td>Titre</td>
                        <td>Liste des acteurs</td>
                        <td>Scenario</td>
                        <td>Nombre entrée</td>
                        <td>Date sortie</td>
                    </tr>
                    <xsl:for-each select="films/film">
                    <tr>
                    <td>
                        <img>
                            <xsl:attribute name="src">
                                <xsl:value-of select="image/@ref"/> 
                            </xsl:attribute>
                        </img>
                    </td>
                    <td>
                        <xsl:value-of select="titre"/>
                    </td> 
                    <td>
                        <ul>
                            <xsl:apply-templates select="acteurs/acteur"/>
                        </ul>
                    </td>
                    <td>
                        <p class= "histoireStyle"> 
                            <xsl:apply-templates select="scenario"/> 
                        </p>
                    </td>
                    <td>
                       <xsl:value-of select="nbentree"/>
                    </td>
                    <td>
                        <xsl:value-of select="datesortie"/>
                    </td>      
                    </tr>
                    </xsl:for-each>
                </table>
            </body>     
        </html>
    </xsl:template>
    <xsl:template match= "acteur">
        <li>
            <xsl:value-of select = "text()" />
        </li>
    </xsl:template>
            <xsl:template match="keyword"> 
        <font class="keyword">
            <xsl:value-of select="."/>
        </font>
    </xsl:template>
     <xsl:template match="ev"> 
        <font class="ev">
            <xsl:value-of select="."/>
        </font>
      </xsl:template>
      <xsl:template match="personnage"> 
        <font class="personnage">
            <xsl:value-of select="."/>
        </font>
      </xsl:template>

</xsl:stylesheet>
