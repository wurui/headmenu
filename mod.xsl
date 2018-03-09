<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:oxm="https://www.openxsl.com">
    <xsl:template match="/root" name="wurui.headmenu">
        <!-- className 'J_OXMod' required  -->
        <div class="J_OXMod oxmod-headmenu" ox-mod="headmenu">
            <nav>
            	<div class="menu">
            		<button class="icon-menu">&#xe600;</button><br/>
            		<ul class="list">
            			<xsl:for-each select="data/headmenu/menu/i">
            				<li>
            					<a href="{href}"><xsl:value-of select="title"/></a>
            				</li>
            			</xsl:for-each>
            		</ul>
            	</div>
            	<xsl:if test="data/headmenu/logo">
                	<img src="{data/headmenu/logo}"/>
                </xsl:if>

            </nav>
        </div>

    </xsl:template>
</xsl:stylesheet>
