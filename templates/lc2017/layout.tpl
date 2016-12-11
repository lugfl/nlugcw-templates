<!DOCTYPE html>
<html lang="de">
<head>
	<meta charset="utf-8">
    <title>{$TITLE|default:"no title"}</title>
	<meta name="description" content="LUG Camp 2017">
	<meta name="author" content="Linux Usergroup Flensburg e.V.">
    <meta http-equiv="X-UA-Compatible" content="IE=9" />

	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

    <link rev="copyright" title="Impressum" href="./index.php?p=impressum">
    <link rev="start" title="Startseite" href="./index.php?p=start">
    <link rev="bookmark" title="www.lugfl.de" href="http://www.lugfl.de">

	<link href='//fonts.googleapis.com/css?family=Open+Sans:400italic,400,300,600&subset=latin,latin-ext' rel='stylesheet' type='text/css'>
	<link href='//fonts.googleapis.com/css?family=Crete+Round&subset=latin,latin-ext' rel='stylesheet' type='text/css'>

  	<link rel="stylesheet" href="/templates/{$TEMPLATE_STYLE}/css/reset.css">
	<link rel="stylesheet" href="/templates/{$TEMPLATE_STYLE}/css/base.css">
	<link rel="stylesheet" href="/templates/{$TEMPLATE_STYLE}/css/skeleton.css">
	<link rel="stylesheet" href="/templates/{$TEMPLATE_STYLE}/css/layout.css">

	<script src="/templates/{$TEMPLATE_STYLE}/js/jquery-3.1.1.min.js"></script>
	<script type="text/javascript" src="/templates/{$TEMPLATE_STYLE}/js/fancybox/jquery.fancybox.pack.js"></script>
	<link rel="stylesheet" type="text/css" href="/templates/{$TEMPLATE_STYLE}/js/fancybox/jquery.fancybox.css" media="screen" />
	<script type="text/javascript">
{literal}
		$(document).ready(function() {
				$("a[rel=example_group]").fancybox({
				'transitionIn'		: 'none',
				'transitionOut'		: 'none',
				'titlePosition' 	: 'over',
				'titleFormat'		: function(title, currentArray, currentIndex, currentOpts) {
					return '<span id="fancybox-title-over">Image ' + (currentIndex + 1) + ' / ' + currentArray.length + (title.length ? ' &nbsp; ' + title : '') + '</span>';
				}
			});
		});
{/literal}
	</script>
</head>
<body>
	<header>
		<nav>
			<div class='container'>
				<div class='five columns logo'>
					<a href='#'>CAMPLogo</a>
				</div>
				<div class='eleven columns'>
					{include file="./navigation.tpl"}
				</div>
			</div>
		</nav>
	</header>

	<div class='container'>
		{block name=content}{/block}
	</div>

	{if $SPONSOREN}
		<div class='container'>
			<div id="sponsoren">{$SPONSOREN}</div>
		</class>
	{/if}
	
	<footer>
		<div class='container'>
			<div class='eight columns'>
				<h5>Das LUG Camp 2017</h5>
				<p>Vom 25.-28. Mai 2017 in Bredstedt - Nordfriesland - Schleswig-Holstein</p>
			</div>

			<div class='four columns social'>
				<h5>Mailingliste</h5>
				<a href='https://lists.lugcamp.org/cgi-bin/mailman/listinfo/teilnehmer'>Abonieren / Abbestellen</a>
			</div>

			<div class='four columns'>
				<h5>Kontakt</h5>
				<p>Linux Usergroup Flensburg e.V.<br>
				Glücksburger Str. 93<br>
				24943 Flensburg<br>
				EMail : info (at) lugfl.de
				</p>
			</div>
		<a id='top' href='#'>&uarr;</a>	
		</div>
	</footer>
{literal}
	<script type="text/javascript">
		var toper = $('a#top');
		$(window).scroll(function(){
            if ($(this).scrollTop() > 100) {
                toper.fadeIn( 200 );
            } else {
                toper.fadeOut( 200 );
            }
        });

         toper.click(function(){
        	$('html, body').animate({scrollTop:0}, 500);	        	
        	return false;
    	}); 
	</script>
{/literal}

{if isset($DEBUG) and $DEBUG ne ""}
	<div class="debug">{$DEBUG}</div>
{/if}

</body>
</html>
