
<h1>Eventauswahl {$event_title|default:''}</h1>
<p>
Bitte w&auml;hlen Sie das Event aus, f&uuml;r welches die aktuellen Registrierungen angezeigt werden sollen.
</p>
	<div id="anmeldung_form">
		<form action="?" method="post">
			<input type="hidden" name="p" value="{$p|default:'anmeldung'}"/>
			<input type="hidden" name="mode" value="lar"/>
				{if isset($events_list)}
				<select name="eventid">
				{foreach $events_list as $event}
						<option value="{$event.eventid}"
						{if isset($selected_eventid) and $selected_eventid eq $event.eventid} selected="selected"{/if}
						>{$event.name|default:''} {if isset($event.charge)} ({$event.charge|string_format:'%.2f'} &euro;){/if}
						(Tln: {$event.curregistrations}/{$event.quota})
						</option>
				{/foreach}
				</select>
					{if isset($err_events)} <p class="error">{$err_events}</p> {/if}
				{/if}
			<p><input type="submit" name="anmeldung_submit" value="Veranstaltung ausw&auml;hlen" /></p>
		</form>
	</div>

