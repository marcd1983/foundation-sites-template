<!DOCTYPE html>
<html lang="$ContentLocale">
	<% include DocumentHeader %>
	<body class="$ClassName.ShortName typography" <% if $i18nScriptDirection %>dir="$i18nScriptDirection"<% end_if %>>
	<% if $SiteConfig.BodyScripts %>$SiteConfig.BodyScripts.RAW<% end_if %>
		<div id="swup" class="transition-main">
			<% include Header %>
			<% include SwiperSlider %>
			<main class="main grid-container $PageWidth" role="main">
			$Layout
			</main>
			<% include UpcomingEventsSection %>
			<% include FeaturesSection %>
			<% include RibbonCta %>
			<% include Footer %>
		</div>
		<div class="transition-overlay" aria-hidden="true"></div>
		<% include DocumentFooter %>
	</body>
</html>
