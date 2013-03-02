{if $MENU != ''}
	</div>

	<!-- Menu -->

	<div class="span12" style="margin-left:0px;">
		<div class="navbar">
			<div class="navbar-inner">
				<ul class="nav">
					{$MENU}
					{if $MENU_SEARCH}
						<li class="sf-search noBack" style="float:right">
							<form id="searchbox" action="{$link->getPageLink('search')}" method="get">
								<p>
									<input type="hidden" name="controller" value="search" />
									<input type="hidden" value="position" name="orderby"/>
									<input type="hidden" value="desc" name="orderway"/>
									<input type="text" name="search_query" value="{if isset($smarty.get.search_query)}{$smarty.get.search_query|escape:'htmlall':'UTF-8'}{/if}" />
								</p>
							</form>
						</li>
					{/if}
				</ul>
				<div class="sf-right">&nbsp;</div>
			</div>
		</div>
	<!--/ Menu -->
{/if}