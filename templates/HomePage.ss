<!DOCTYPE html>
<%-- outer --%>
<html lang="$ContentLocale">
	<% include DocumentHeader %>
	<body class="$ClassName.ShortName" <% if $i18nScriptDirection %>dir="$i18nScriptDirection"<% end_if %>>
	<%-- <% if $SiteConfig.BodyScripts %>$SiteConfig.BodyScripts.RAW<% end_if %> --%>
			<% include Header %>
			<% include SwiperSlider %>
			<% include ServiceSection %>
			$Layout
			<% include Footer %>
		<% include DocumentFooter %>
	</body>
</html>
