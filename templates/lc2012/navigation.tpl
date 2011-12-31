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
				<li><a href="javascript:page_rename();">[Seite umbennen]</a></li>
				<li><a href="javascript:page_move();">[Seite verschieben]</a></li>
				{* Pagetype dependant navigation items.. *}
				{if $pagetypeid == $PAGETYPE_TEXT_HTML} {* Text/HTML *}
					<li><a href="javascript:editor_show();">[Seite bearbeiten]</a></li>
					<li><a href="javascript:page_create_show();">[Seite erstellen]</a></li>
					<li><a href="javascript:page_delete_show();">[Seite löschen]</a></li>
				{elseif $pagetypeid == $PAGETYPE_PLUGIN_NEWS} {* Plugin/News *}
					<li><a href="javascript:news_add_show();">[News schreiben]</a></li>
					<li><a href="javascript:editor_show();">[News bearbeiten]</a></li>
					<li><a href="javascript:news_delete_show();">[News löschen]</a></li>
				{/if}
			</ul>
			{* Include the page editor here when we are in admin role.. The editor template takes care itself if it is in editmode or not.. *}
			{include file="../page_editor.tpl"}
		</div>
	{/if}

</div>
