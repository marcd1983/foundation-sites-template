<!DOCTYPE html>
<%-- outer --%>
<html lang="$ContentLocale">
	<% include DocumentHeader %>
	<body class="$ClassName.ShortName" <% if $i18nScriptDirection %>dir="$i18nScriptDirection"<% end_if %>>
			<a href="#main-content" class="show-on-focus">Skip to content</a>
			<% if $SiteConfig.BodyScripts %>$SiteConfig.BodyScripts.RAW<% end_if %>
			<% include Includes/megamenu/FoundationMegaMenu %>
			<% include SwiperSlider %>
			<div id="main-content">
			<% include Includes/service/ServiceSection %>
			<% include CompanySection %>
			<% include TestimonialSection %>
			<%-- $Layout --%>
			</div>
			<% include Footer %>
		<% include DocumentFooter %>
	</body>
</html>
