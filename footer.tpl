{*
* 2007-2012 PrestaShop
*
* NOTICE OF LICENSE
*
* This source file is subject to the Academic Free License (AFL 3.0)
* that is bundled with this package in the file LICENSE.txt.
* It is also available through the world-wide-web at this URL:
* http://opensource.org/licenses/afl-3.0.php
* If you did not receive a copy of the license and are unable to
* obtain it through the world-wide-web, please send an email
* to license@prestashop.com so we can send you a copy immediately.
*
* DISCLAIMER
*
* Do not edit or add to this file if you wish to upgrade PrestaShop to newer
* versions in the future. If you wish to customize PrestaShop for your
* needs please refer to http://www.prestashop.com for more information.
*
*  @author PrestaShop SA <contact@prestashop.com>
*  @copyright  2007-2012 PrestaShop SA
*  @license    http://opensource.org/licenses/afl-3.0.php  Academic Free License (AFL 3.0)
*  International Registered Trademark & Property of PrestaShop SA
*}

		{if !$content_only}
				</div>

<!-- Right -->
				<div id="right_column" class="span3">
					{$HOOK_RIGHT_COLUMN}
				</div>
			</div>

<!-- Footer -->
			<div id="footer" class="row-fluid">
				{$HOOK_FOOTER}
			</div>
		</div>
	{/if}

	<script>
		function setCookie (name, value, expires, path, domain, secure) {
		      document.cookie = name + "=" + escape(value) +
		        ((expires) ? "; expires=" + expires : "") +
		        ((path) ? "; path=" + path : "") +
		        ((domain) ? "; domain=" + domain : "") +
		        ((secure) ? "; secure" : "");
		}
		var l = location.hostname;
		var tld = l.substr(l.lastIndexOf("."));
		window.onload = function(){
		setCookie("wheight", window.document.body.scrollHeight, false, '/', "magkaznu"+tld);
		};
		$(window).load(function(){
		setCookie("wheight", window.document.body.scrollHeight, false, '/', "magkaznu"+tld);
		});
	</script>
	</body>
</html>
