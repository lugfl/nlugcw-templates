<h1>Kommentare {if isset($events_data.name)} f&uuml;r &quot;{$events_data.name}&quot;{/if}</h1>

<div>
{foreach $events_registration_comments as $c}
<p>
  <h3>{$c.username} at {$c.crdate}</h3>
  <p>{$c.bemerkung}</p>
</p>

{/foreach}
</div>
