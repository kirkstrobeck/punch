<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:output method="xml"
	doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN"
	doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"
	omit-xml-declaration="yes"
	encoding="UTF-8"
	indent="no" />

<xsl:param name="size"/>

<xsl:template match="data">
	
<html>
	<head>
		<title>
            <xsl:value-of select="$website-name" />
        </title>
		
		<link href="{$workspace}/css/common.css" rel="stylesheet" type="text/css" />
		<link rel="icon" type="images/png" href="" />
	</head>
	<body>
		
		<ul id="nav">
            
            <li class="top">
                <span>PHOTOGRAPHY</span>
                <ul>
            	   <!-- <xsl:apply-templates select="categories/entry[name/@handle != 'home']" /> -->
            	   <xsl:apply-templates select="categories/entry" />
            	</ul>
            </li>
        	
        	<li class="top">
        	   <span>PROJECTS</span>
        	   <ul>
                    <xsl:apply-templates select="links/entry" />
                </ul>
        	</li>
        	

        </ul>
    	
    	<div id="photos">
            <xsl:if test="$size">
            	<xsl:attribute name="style">height: <xsl:value-of select="$size" />px</xsl:attribute>
            </xsl:if>
            <xsl:choose>
            	<xsl:when test="not($category)">
            		<xsl:apply-templates select="photos/entry[category/item/@handle = 'home']" />
            	</xsl:when>
            	<xsl:otherwise>
            		<xsl:apply-templates select="photos/entry" />
            	</xsl:otherwise>
            </xsl:choose>
        
    	</div>
    		
        <div id="footer">
            
            <xsl:if test="$size">
            	<xsl:attribute name="style">top: <xsl:value-of select="number($size) + 100" />px</xsl:attribute>
            </xsl:if>
            
            <a href="mailto:noreply@noreply.com" style="text-transform:uppercase"><xsl:value-of select="$website-name" /></a>
            
        </div>
    		
        <script src="{$workspace}/js/jquery-1.4.4.min.js"></script>
        <script src="{$workspace}/js/jquery-ui-1.8.7.custom.min.js"></script>
        <script src="{$workspace}/js/jquery.timer.js"></script>
        <script src="{$workspace}/js/jquery.url.js"></script>
        <script src="{$workspace}/js/common.js"></script>   
        
        <xsl:if test="//data/device/@is-mobile = 'yes'">
            <script src="{$workspace}/js/ios.js"></script> 		
        </xsl:if>
        
	</body>
</html>

	

</xsl:template>



<xsl:template match="photos/entry">
    
    
    <xsl:choose>
    	<xsl:when test="$size">
    		<img src="{$root}/image/1/0/{$size}/0{photo/@path}/{photo/filename}" />
    	</xsl:when>
    	<xsl:otherwise>
    		<img src="{$root}/image/1/0/500/0{photo/@path}/{photo/filename}" />
    	</xsl:otherwise>
    </xsl:choose>
    
    

    <!-- <div style="background: url('{$root}/image/1/0/500/0{photo/@path}/{photo/filename}'); width:{photo/meta/@width}px; height:500px;"></div> -->

</xsl:template>




<xsl:template match="categories/entry">

    <li>
        
        <xsl:element name="a">
        
            <xsl:choose>
            	<xsl:when test="name = 'home'">
                    <xsl:attribute name="href">
                        <xsl:value-of select="$root" />
                    </xsl:attribute>	
            	</xsl:when>
            	<xsl:otherwise>
                    <xsl:attribute name="href">
                        <xsl:value-of select="$root" />
                        <xsl:text>/</xsl:text>
                        <xsl:value-of select="name/@handle" />
                        <xsl:text>/</xsl:text>
                    </xsl:attribute>		
            	</xsl:otherwise>
        	</xsl:choose>
        	
        	<xsl:if test="$category = name">
                <xsl:attribute name="class">active</xsl:attribute>
            </xsl:if>
            
            <xsl:value-of select="name" />
            
        </xsl:element>

    </li>

</xsl:template>


<xsl:template match="links/entry">

    <li>

        <xsl:element name="a">
        
            <xsl:attribute name="href">
                <xsl:value-of select="url" />
            </xsl:attribute>		
            
            <xsl:value-of select="link" />
            
        </xsl:element>

    </li>
    
</xsl:template>








</xsl:stylesheet>