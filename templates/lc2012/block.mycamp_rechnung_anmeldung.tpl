<h2>Anmeldedaten</h2>
<table>
<tr>
	<th>Vorname</th><td>{$ANMELDUNG.vorname}</td>
</tr>
<tr>
	<th>Nachname</th><td>{$ANMELDUNG.nachname}</td>
</tr>
<tr>
	<th>Straße, Hausnummer</th><td>{$ANMELDUNG.strasse} {$ANMELDUNG.hausnr}</td>
</tr>
<tr>
	<th>Land, PLZ, Ort</th><td>{$ANMELDUNG.land}-{$ANMELDUNG.plz} {$ANMELDUNG.ort}</td>
</tr>
<tr>
	<th>Geburtstag</th><td>{$ANMELDUNG.gebdat}</td>
</tr>
<tr>
	<th>LUG</th><td>{$ANMELDUNG.lugname}</td>
</tr>
{if $ANMELDUNG.vegetarier != 0}
<tr>
	<th>Essen</th><td>Vegetarisch</td>
</tr>
{/if}
<tr>
	<th>Anreise</th><td>{$ANMELDUNG.anreise}</td>
</tr>
<tr>
	<th>Bemerkung</th><td>{$ANMELDUNG.bemerkung}</td>
</tr>
</table>

<h2>Angemeldete Events</h2>
<table>
<tr>
	<th>Event</th><th>Kosten</th>
</tr>
{foreach $EVENTS as $EVENT}
{strip}
<tr>
	<td>{$EVENT.name}</td>
	<td>{$EVENT.charge}</td>
</tr>
{/strip}
{/foreach}
</table>
