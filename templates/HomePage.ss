<!DOCTYPE html>
<html lang="$ContentLocale">
	<% include DocumentHeader %>
	<body class="$ClassName.ShortName" <% if $i18nScriptDirection %>dir="$i18nScriptDirection"<% end_if %>>
		<div id="swup" class="transition-main">
			<% include Header %>
			$Layout
			<% include Footer %>
			<% include DocumentFooter %>
		</div>
	</body>
</html>
