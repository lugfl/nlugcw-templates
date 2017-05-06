{* Navigation generator *}
{assign var=SUBNAVI value=""}

<ul class='mainMenu'>
	{foreach from=$NAVI item=itm}
		<li>
		{if $itm.subitems}
		<a>{$itm.title}</a>
		<ul>
			{foreach from=$itm.subitems item=subitm}
			<li><a href="{$subitm.url}" title="{$subitm.title}"{if $subitm.active} class="active"{/if}>{$subitm.title}</a>
			{/foreach}
		</ul>
		{else}
			<a href="{$itm.url}" title="{$itm.title}"{if $itm.active} class="active"{/if}>{$itm.title}</a>
		{/if}
		</li>
	{/foreach}

	{if $role_admin}
		<li><a href="#" title="Admin navigation">Admin Menu</a>
			<ul>
				{if isset($ADMINNAVI)}
					{foreach from=$ADMINNAVI item=itm}
					<li><a href="{$itm.url}">{$itm.title}</a></li>
					{/foreach}
				{/if}
			</ul>
		</li>
	{/if}

</ul>

{if $role_admin}
	{* Include the page editor here when we are in admin role.. * }
	{* The editor template takes care itself if it is in editmode or not.. *}
	{include file="page_editor.tpl"}
{/if}
