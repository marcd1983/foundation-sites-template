<footer class="footer" role="contentinfo">
	<div class="grid-container nav-footer">
		<div class="grid-x grid-margin-x grid-margin-y align-justify">
			<% loop $MenuType('Footer') %>
				<% if $MenuItems %>
					<div class="cell large-shrink small-6">
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
			<div class="cell large-shrink small-6">
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

	<div class="grid-container sub-footer">
		<div class="grid-x grid-margin-x grid-margin-y align-justify align-middle">
			<% loop $MenuType('Bottom Footer') %>
				<% if $MenuItems %>
				<div class="large-shrink small-12">
					<div class="cell">
						<div class="menu">
							<% loop $MenuItems %>
								<a href="$URL" class="sub-footer-link $LinkingMode"<% if $NewWindow %> target="_blank" rel="noopener"<% end_if %>>$Title</a>
							<% end_loop %>
						</div>
					</div>
				</div>
				<% end_if %>
			<% end_loop %>
		</div>
	</div>
</footer>
<% include CookieConsent %>