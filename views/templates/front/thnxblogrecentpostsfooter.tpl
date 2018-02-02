{if $thnxblogposts !== false}
<div class="thnxblogrecentposts block blog_block blog_recentpost_footer col-sm-3">
	<h4 class="title_block">
    	{if isset($thnxbrp_title)}{$thnxbrp_title}{/if}
    </h4>
    <div class="block_content list-block">
        <ul>
        	{foreach from=$thnxblogposts item=thnxblgpst}
        		<li class="clearfix">
					<a class="product-name" href="{$thnxblgpst.link}">
						{$thnxblgpst.post_title|truncate:40:'..'}
					</a>
                     <p>{$thnxblgpst.post_date|date_format:"%e %b %Y"}</p>    
        		</li>
        	{/foreach}
        </ul>
    </div>
</div>
{else}
	<p>{l s='No recent post at this time.' mod='thnxblogrecentposts'}</p>
{/if}