<h2>Anmeldung {$event_title|default:''}</h2>
<p>
Um euch die Anmeldung etwas zu erleichtern, k&ouml;nnt ihr mit einem Login mehrere Personen anmelden. Das ist praktisch z.B. f&uuml;r Familien. Alle Buchungen werden f&uuml;r euch dann unter diesem einen Login zusammen gefasst und ihr bekommt auch nur eine Gesamtrechnung.
</p>
<p>* Pflichtfelder</p>
	<div id="anmeldung_form">
		<form action="?" method="post">
			<input type="hidden" name="p" value="{$p|default:'anmeldung'}"/>
			<input type="hidden" name="mode" value="save"/>

			<fieldset>
				<label for="vorname">Vorname*</label>
				<input id="vorname" type="text" name="vorname" value="{$vorname|default:''}">
				{if isset($err_vorname)} <p class="error">{$err_vorname}</p> {/if}

				<label for="nachname">Nachname*</label>
				<input id="nachname" type="text" name="nachname" value="{$nachname|default:''}">
				{if isset($err_nachname)} <p class="error">{$err_nachname}</p> {/if}

				<label for="strasse">Stra&szlig;e* und Hausnummer*</label>
				<input id="strasse" type="text" name="strasse" value="{$strasse|default:''}" style="width:90%;">
				<input id="haus" type="text" name="haus" value="{$haus|default:''}" size="4" style="width:9%;">
				{if isset($err_strasse)} <p class="error">{$err_strasse}</p> {/if}
				{if isset($err_haus)} <p class="error">{$err_haus}</p> {/if}

				<label for="plz">PLZ* und Ort*</label>
				<div class="doubleform">
					<input id="plz" type="text" name="plz" value="{$plz|default:''}" size="8">
					<input id="ort" type="text" name="ort" value="{$ort|default:''}">
					{if isset($err_plz)} <p class="error">{$err_plz}</p> {/if}
					{if isset($err_ort)} <p class="error">{$err_ort}</p> {/if}
				</div>

				<label>Land*</label>
				<div class="doubleform">
					<label for="landid">ausw&auml;hlen</label>
					<label for="landnew">oder neues Land anlegen</label>
					<select id="landid" name="landid">
						<option value="0"></option>
						{foreach $countries as $c}
							<option value="{$c.landid}" {if $landid eq $c.landid}selected="selected"{/if}>{$c.name}</option>
						{/foreach}
					</select>
					<input id="landnew" type="text" name="landnew" value="{$landnew|default:''}" size="30">
					{if isset($err_land)} <p class="error">{$err_land}</p> {/if}
				</div>

				<label for="geb_d">Geburtsdatum (dd-mm-yyyy)*</label>
				<div class="bdate">
					<input id="geb_d" type="text" name="geb_d" value="{$geb_d|default:''}" size="2" maxlength="2" style="width:25%">
					<input id="geb_m" type="text" name="geb_m" value="{$geb_m|default:''}" size="2" maxlength="2" style="width:25%">
					<input id="geb_y" type="text" name="geb_y" value="{$geb_y|default:''}" size="4" maxlength="4" style="width:49%">
					{if isset($err_geb)} <p class="error">{$err_geb}</p> {/if}
				</div>

				<label>LUG*</label>
				<div class="doubleform">
					<label for="lugid">ausw&auml;hlen</label>
					<label for="lugnew">oder neue LUG anlegen</label>
					<select id="lugid" name="lugid">
						<option value="0"></option>
						{foreach $lugs as $l}
							<option value="{$l.lugid}" {if isset($lugid) and $lugid eq $l.lugid}selected="selected"{/if}>{$l.name}</option>
						{/foreach}
					</select>
					<input id="lugnew" type="text" name="lugnew" value="{$lugnew|default:''}" size="30">
					{if isset($err_lug)} <p class="error">{$err_lug}</p> {/if}
				</div>
			</fieldset>

			<fieldset>
				<h3>Veranstaltungsauswahl</h3>
				<label for="events[]">Ich m&ouml;chte an folgenden Veranstaltungen teilnehmen:</label>
				{if isset($events_list)}
					{foreach $events_list as $event}
						<div{if isset($event.parent)} class="content-indent1"{/if}>
							<input id="events[]" name="events[]" type="checkbox" value="{$event.eventid}" {if $event.quota <= $event.curregistrations}disabled="disabled"{/if}/> {$event.name|default:''} {if isset($event.charge)} ({$event.charge|string_format:'%.2f'} &euro;){/if}
							{if $event.quota <= $event.curregistrations}(ACHTUNG: Veranstaltung ausgebucht!!!){/if}
							{if isset($event.beschreibung)}
								<div class="content-indent1">{$event.beschreibung|default:''}</div>
							{/if}
						</div>
					{/foreach}
					{if isset($err_events)} <p class="error">{$err_events}</p> {/if}
				{/if}
			</fieldset>

			<fieldset>
				<h3>Optionale Angaben</h3>
				<h4>Essen</h4>
				<input id="vegetarier" type="checkbox" name="vegetarier" value="1" {if isset($vegetarier) and $vegetarier eq 1}checked="checked"{/if}>
				<label for="vegetarier">Ich bin Vegetarier</label><br>

				<h4>Anreise</h4>
				{foreach $anreise_list as $a}
					<input type="radio" name="anreise" id="anreise-{$a.anreiseid}" value="{$a.anreiseid}" {if isset($anreise) and $anreise eq $a.anreiseid}checked="checked"{/if}>
					<label for="anreise-{$a.anreiseid}">{$a.name}</label></br/>
				{/foreach}
				{if isset($err_anreise)} <p class="error">{$err_anreise}</p> {/if}
			</fieldset>

			<h3>Bemerkung</h3>
			<p>Hast Du noch eine Bemerkung zur Anmeldung? Kein Problem...</p>
			<p><textarea name="bemerkung" rows="5" cols="70">{$bemerkung|default:''}</textarea>
			</p>
			<p><input type="submit" name="anmeldung_submit" value="Ich bin dabei!"></p>
			</form>
			</div>

