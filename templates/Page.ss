<!DOCTYPE html>
<html lang="$ContentLocale">
	<% include DocumentHeader %>
	<body class="$ClassName.ShortName" <% if $i18nScriptDirection %>dir="$i18nScriptDirection"<% end_if %>>
	<% if $SiteConfig.BodyScripts %>$SiteConfig.BodyScripts.RAW<% end_if %>
	<div id="swup" class="transition-main">
		<% include Header %>
		$Layout
		<% include Footer %>
	</div>
	<div class="transition-overlay" aria-hidden="true"></div>
	<% include DocumentFooter %>
	</body>
</html>
