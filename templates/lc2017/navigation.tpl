{* Navigation generator *}
{assign var=SUBNAVI value=""}


<ul class='mainMenu'>

	{foreach from=$NAVI item=itm}
		<li><a href="{$itm.url}" title="{$itm.title}"
			{if $itm.active}
				class="active"
				{assign var=SUBNAVI value=$itm.subitems}
			{/if}
			>{$itm.title}</a></li>
			{/foreach}

	{if $role_admin}
		<div id="admin-nav">
			<ul>
				{if isset($ADMINNAVI)}
					{foreach from=$ADMINNAVI item=itm}
					<li><a href="{$itm.url}">{$itm.title}</a></li>
					{/foreach}
				{/if}
			</ul>
			{* Include the page editor here when we are in admin role.. * }
			{* The editor template takes care itself if it is in editmode or not.. *}
			{include file="../page_editor.tpl"}
		</div>
	{/if}

</ul>
