{* Navigation generator *}
{assign var=SUBNAVI value=""}
<div id="nav">
	<div id="haupt-navi">
		<ul>
		{foreach from=$NAVI item=itm}
			<li><a href="{$itm.url}"
			{if $itm.active}
				class="akktiv"
				{assign var=SUBNAVI value=$itm.subitems}
			{/if}
			>{$itm.title}</a></li>
			{/foreach}
		</ul>
	</div>

	<div id="sub-navi">
		{* This var is set above while generating level 1 *}
		{if $SUBNAVI}
			{foreach from=$SUBNAVI item=item}
				<li><a href="{$item.url}"
				{if $item.active}
					class="akktiv"
				{/if}
				>{$item.title}</a></li>
			{/foreach}
		{/if}
	</div>

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

</div>
