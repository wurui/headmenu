<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:oxm="https://www.openxsl.com">
    <xsl:template match="/root" name="wurui.headmenu">
        <!-- className 'J_OXMod' required  -->
        <div class="J_OXMod oxmod-headmenu" ox-mod="headmenu">
            <nav>
            	<div class="menu">
            		<button class="icon-menu skin-color">&#xe600;</button><br/>
            		<ul class="list">
            			<xsl:for-each select="data/the-site/channels/i">
            				<li>
            					<a href="{href}"><xsl:value-of select="title"/></a>
            				</li>
            			</xsl:for-each>
            		</ul>
            	</div>
                <a href="{data/the-site/href}">
                	<xsl:if test="data/the-site/logo and data/the-site/logo != ''">
                    	<img src="{data/the-site/logo}"/>
                    </xsl:if>
                    <sub><xsl:value-of select="data/the-site/title"/></sub>
                </a>
                

            </nav>
        </div>

    </xsl:template>
</xsl:stylesheet>
