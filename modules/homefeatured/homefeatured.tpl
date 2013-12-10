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

<!-- MODULE Home Featured Products -->
<div id="featured-products_block_center" class="block products_block clearfix">
	<p class="panel-heading">{l s='Featured products' mod='homefeatured'}</p>
	{if isset($products) AND $products}
		<div class="block_content">
			{assign var='liHeight' value=250}
			{assign var='nbItemsPerLine' value=4}
			{assign var='nbLi' value=$products|@count}
			{math equation="nbLi/nbItemsPerLine" nbLi=$nbLi nbItemsPerLine=$nbItemsPerLine assign=nbLines}
			{math equation="nbLines*liHeight" nbLines=$nbLines|ceil liHeight=$liHeight assign=ulHeight}
			<div class="row" style="padding-left:10px;">
			{foreach from=$products item=product name=homeFeaturedProducts}
				{math equation="(total%perLine)" total=$smarty.foreach.homeFeaturedProducts.total perLine=$nbItemsPerLine assign=totModulo}
				{if $totModulo == 0}{assign var='totModulo' value=$nbItemsPerLine}{/if}
				<div class="ajax_block_product col-md-4">
					<a href="{$product.link}" title="{$product.name|escape:html:'UTF-8'}" class="product_image"><img src="{$link->getImageLink($product.link_rewrite, $product.id_image, 'large_default')}" height="{$homeSize.height}" width="{$homeSize.width}" alt="{$product.name|escape:html:'UTF-8'}" class="img-rounded" />{if isset($product.new) && $product.new == 1}<span class="new">{l s='New' mod='homefeatured'}</span>{/if}</a>
					<h5 class="s_title_block"><a href="{$product.link}" title="{$product.name|truncate:50:'...'|escape:'htmlall':'UTF-8'}">{$product.name|truncate:35:'...'|escape:'htmlall':'UTF-8'}</a></h5>
					<div class="product_desc"><a href="{$product.link}" title="{l s='More' mod='homefeatured'}">{$product.description_short|strip_tags|truncate:65:'...'}</a></div>
					<div>
						<a class="label pull-right" href="{$product.link}" title="{l s='View' mod='homefeatured'}">{l s='View' mod='homefeatured'}</a>
						{if $product.show_price AND !isset($restricted_country_mode) AND !$PS_CATALOG_MODE}<div class="price_container"><span class="badge">{if !$priceDisplay}{convertPrice price=$product.price}{else}{convertPrice price=$product.price_tax_exc}{/if}</span></div>{else}<div style="height:21px;"></div>{/if}
						
						{if ($product.id_product_attribute == 0 OR (isset($add_prod_display) AND ($add_prod_display == 1))) AND $product.available_for_order AND !isset($restricted_country_mode) AND $product.minimal_quantity == 1 AND $product.customizable != 2 AND !$PS_CATALOG_MODE}
							{if ($product.quantity > 0 OR $product.allow_oosp)}
							<a class="btn btn-info btn-mini ajax_add_to_cart_button pull-right" rel="ajax_id_product_{$product.id_product}" href="{$link->getPageLink('cart')}?qty=1&amp;id_product={$product.id_product}&amp;token={$static_token}&amp;add" title="{l s='Add to cart' mod='homefeatured'}">{l s='Add to cart' mod='homefeatured'}</a>
							{else}
							<span class="btn btn-mini pull-right disabled">{l s='Add to cart' mod='homefeatured'}</span>
							{/if}
						{else}
							<div style="height:23px;"></div>
						{/if}
					</div>
				</div>
			{/foreach}
			</div>
		</div>
	{else}
		<p>{l s='No featured products' mod='homefeatured'}</p>
	{/if}
</div>
<!-- /MODULE Home Featured Products -->
