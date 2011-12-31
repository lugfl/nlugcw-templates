<table>
<tr><th>Event</th><th>Kosten</th><th>Bezahlstatus</th><th>Details</th></tr>
{foreach $PERSONEN as $PERSON}
	<tr>
	<td colspan="3"><b>{$PERSON.vorname} {$PERSON.nachname}</b></td>	
	<td><a href="?p={$PAGEID}&anmeldung={$PERSON.anmeldungid}">mehr...</a></td>
	</tr>
	{foreach $PERSON.EVENTS as $EVENT}
	{strip}
	<tr>
		<td>{$EVENT.eventname}</td>
		<td style="text-align:right">{$EVENT.eventkosten} &euro;</td>
		<td>{if $EVENT.bezahlt eq 1}Bezahlt{else}Offen{/if}</td>
		<td></td>
	</tr>
	{/strip}
	{/foreach}
{/foreach}
</table>

{* TODO implement in january :)
<table>
<tr><th>Artikel</th><th>Gr&ouml;&szlig;e</th><th>Anzahl</th><th>Gesamtpreis</th><th>Bezahlstatus</th></tr>
{foreach $ARTIKEL as $ART}
{strip}
<tr>
	<td>{$ART.name}</td>
	<td>{$ART.groesse}</td>
	<td>{$ART.anzahl}</td>
	<td style="text-align:right">{$ART.kosten} &euro;</td>
	<td>{if $ART.bezahlt eq 1}Bezahlt{else}Offen{/if}</td>
</tr>
{/strip}
{/foreach}
</table>
*}
