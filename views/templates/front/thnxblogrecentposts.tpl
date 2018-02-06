{if $thnxblogposts !== false}
<div class="thnxblogrecentposts block blog_block">
	<h4 class="title_block">
    	{if isset($thnxbrp_title)}{$thnxbrp_title}{/if}
    </h4>
    <div class="block_content products-block">
        <ul>
        	{foreach from=$thnxblogposts item=thnxblgpst}
        		<li class="clearfix">
        			{if $thnxblgpst.post_img != 'noimage.jpg'}
        			<a href="{$thnxblgpst.link}" title="{$thnxblgpst.post_title}" class="products-block-image" style="background-image:url('{$thnxblgpst.post_img_small}')">
        			</a>
        			{else}
						<a href="{$thnxblgpst.link}" title="{$thnxblgpst.post_title}" class="products-block-image" style="background-image:url('{$urls.img_url}no-image.jpg');background-size:100%;">
						</a>
        			{/if}
        			<div class="product-content">
                    	<h5>
                        	<a class="product-name" href="{$thnxblgpst.link}">{$thnxblgpst.post_title|truncate:40:'..'}</a>
                        </h5>
                        {* <p>{$thnxblgpst.post_author_arr.firstname} {$thnxblgpst.post_author_arr.lastname}</p> *}
                        <p><a href="{$thnxblgpst.category_default_arr.link}">{$thnxblgpst.category_default_arr.name}</a></p>
                        <div class="price-box">
                        	{$thnxblgpst.post_date|date_format:"%e %b %Y"}
                        </div>
                    </div>
        		</li>
        	{/foreach}
        </ul>
    </div>
</div>
{else}
	<p>{l s='No recent post at this time.' mod='thnxblogrecentposts'}</p>
{/if}
{*
/**
 * 2007-2018 PrestaShop
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
 * @author    PrestaShop SA <contact@prestashop.com>
 * @copyright 2007-2018 PrestaShop SA
 * @license   http://opensource.org/licenses/afl-3.0.php  Academic Free License (AFL 3.0)
 * International Registered Trademark & Property of PrestaShop SA
 */
*}