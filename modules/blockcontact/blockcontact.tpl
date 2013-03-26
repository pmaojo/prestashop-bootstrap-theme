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

<div id="contact_block" class="block">
	<p class="title_block">{l s='Contact us' mod='blockcontact'}</p>
	<div class="block_content clearfix" style="padding:10px;">
			<span>{l s='Связаться с нами' mod='blockcontact'}</span>
			<div>{if $telnumber != ''}<i class="icon-headphones"></i>{$telnumber|escape:'htmlall':'UTF-8'}{/if}</div>
			{if $email != ''}<a href="mailto:{$email|escape:'htmlall':'UTF-8'}" class="btn btn-primary btn-small" style="margin-top:35px;">{l s='Написать письмо' mod='blockcontact'}</a>{/if}
	</div>
</div>
