<footer class="footer" role="contentinfo">
	<div class="grid-container nav-footer">
		<div class="grid-x grid-margin-x grid-margin-y">
			<% loop $MenuType('Footer') %>
				<% if $MenuItems %>
					<div class="cell large-3 small-6">
						<h3>$Name</h3>
						<div class="menu vertical">
							<% loop $MenuItems %>
							<a href="$URL" class="footer-link $LinkingMode"<% if $NewWindow %> target="_blank" rel="noopener"<% end_if %>>$Title</a>
							<% end_loop %>
						</div>
					</div>
				<% end_if %>
			<% end_loop %>
			<% loop Locations %>
			<div class="cell large-3 small-6">
				<h3>Contact Us</h3>
				<%-- Address block --%>
				<% if $LocationName || $Address || $City || $State || $Zip %>
			
					<address class="store-location-address">
						<% if $LocationName %>
						<strong>$LocationName</strong>
						<% end_if %><br />
						<% if $Address %>$Address.XML<br /><% end_if %>
						<% if $Address2 %>$Address2.XML<br /><% end_if %>
						<% if $City || $State || $Zip %>
						$City.XML<% if $City && $State %>, <% end_if %>$State.XML <% if $Zip %>$Zip.XML<br /><% end_if %>
						<% end_if %>
						<br>
						<% if $Phone %>
						<span class="store-location-phone">
							<strong>Phone:</strong>
							<a href="tel:$Phone.Plain">$Phone.XML</a>
						</span>
					<% end_if %>
					</address>
					<% if $MapLinkURL %>
						<a class="button small hollow" href="$MapLinkURL.ATT" target="_blank" rel="noopener">View larger map</a>
					<% else %>
						<%-- Google Maps link (basic, no API key required) --%>
						<a target="_blank" rel="noopener" class="button small hollow"
						href="https://www.google.com/maps/search/?api=1&query=$FullAddress.URLEncode">
						View on Google Maps
						</a>
					<% end_if %>
					
				<% end_if %>
			</div>
			<% end_loop %>
		</div>
	</div>

	<div class="sub-footer">
		<div class="grid-x grid-margin-x grid-margin-y align-center">
			<div class="cell large-4">
				<div class="menu align-center">
					<a href="$BaseHref" class="text-center-small footer-link brand" rel="home">$SiteConfig.Title</a>
				</div>
			</div>
			<div class="cell large-4">
				<% loop $MenuType('Copyright') %>
					<div class="cell large-shrink">
						<div class="menu align-center">
							<% loop $MenuItems %>
								<a href="$URL" class="text-center-small footer-link $LinkingMode">$Title</a>			
							<% end_loop %>
						</div>
					</div>
				<% end_loop %>
			</div>
			<div class="cell large-4">
				<div class="menu align-center">
				<a href="https://marcusdeleon.com" class="text-center-small footer-link $LinkingMode">Theme by Marcus De Leon</a>
				</div>
			</div>
		</div>
	</div>
</footer>
<% include CookieConsent %>