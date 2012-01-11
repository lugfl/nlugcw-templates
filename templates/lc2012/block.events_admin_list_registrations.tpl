<h1>Anmeldungen {if isset($events_data.title)} {$events_data.title}{/if}</h1>

{if isset($events_registrations)}
<table width="100%">
<thead>
  <tr>
		<th>Vorname</th>
		<th>Nachname</th>
		<th>Account</th>
		<th>Stra&szlig;e</th>
		<th>PLZ/Ort</th>
		<th>EMail</th>
		<th>LUG</th>
	</tr>
</thead>
{foreach $events_registrations as $itm}
	<tr>
		<td>{$itm.vorname}</td>
		<td>{$itm.nachname}</td>
		<td><a href="?p=mcrech&accountid={$itm.accountid}">{$itm.username}</a></td>
		<td>{$itm.strasse}</td>
		<td>{$itm.plz} {$itm.ort}</td>
		<td>{if isset($itm.email)}<a href="mailto:{$itm.email}">{$itm.email}</a>{/if}</td>
		<td>{$itm.lugname}</td>
	</tr>
{/foreach}
</table>
{/if}
<div>
</div>
