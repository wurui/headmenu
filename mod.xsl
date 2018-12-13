<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:oxm="https://www.openxsl.com">
    <xsl:template match="/root" name="wurui.headmenu">
        <!-- className 'J_OXMod' required  -->
        <div class="J_OXMod oxmod-headmenu" ox-mod="headmenu">
            <nav>
            	<div class="menu">
            		<button class="icon-menu skin-color">&#xe600;</button><br/>
            		<ul class="list">
            			<xsl:for-each select="data/ui-entry/i">
            				<li>
            					<a href="{href}"><xsl:value-of select="title"/></a>
            				</li>
            			</xsl:for-each>
            		</ul>
            	</div>
            	<xsl:if test="data/ui-imglist/i[1]/img">
                	<img src="{data/ui-imglist/i[1]/img}"/>
                    <sub><xsl:value-of select="data/ui-imglist/i[1]/title"/></sub>
                </xsl:if>

            </nav>
        </div>

    </xsl:template>
</xsl:stylesheet>
