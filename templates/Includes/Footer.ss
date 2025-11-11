<footer class="footer" role="contentinfo" style="background-color: silver;">
	<div class="grid-container">
		<div class="grid-x grid-padding-x grid-padding-y align-justify">
			<% if $MenuSet('Footer One') %>
				<div class="cell large-shrink">
					<h4>$MenuSet('Footer One').Name</h4>
					<ul class="menu vertical">
					<% loop $MenuSet('Footer One').MenuItems %>
					<li>
						<a href="$Link" class="$LinkingMode">$MenuTitle</a>
					</li>
					<% end_loop %>
					</ul>
				</div>
			<% end_if %>
			<% if $MenuSet('Footer Two') %>
				<div class="cell large-shrink">
					<h4>$MenuSet('Footer Two').Name</h4>
					<ul class="menu vertical">
					<% loop $MenuSet('Footer Two').MenuItems %>
					<li>
						<a href="$Link" class="$LinkingMode">$MenuTitle</a>
					</li>
					<% end_loop %>
					</ul>
				</div>
			<% end_if %>

			<% if $MenuSet('Footer Three') %>
				<div class="cell large-shrink">
					<h4>$MenuSet('Footer Three').MenuTitle</h4>
					<% loop $MenuSet('Footer Three').MenuItems %>
					<li>
						<a href="$Link" class="$LinkingMode">$MenuTitle</a>
					</li>					
					<% end_loop %>
				</div>
			<% end_if %>

		</div>
	</div>
	<div class="grid-container text-center-small">
		<div class="grid-x grid-padding-x grid-padding-y">
			<div class="cell large-shrink">
				<a href="$BaseHref" class="brand" rel="home">$SiteConfig.Title</a>
			</div>
			<div class="cell large-shrink">
				<% include SimpleNav %>
			</div>
			<div class="cell large-shrink">
				<a href="https://marcusdeleon.com">Theme</a> by Marcus De Leon</a>
			</div>
		</div>
	</div>
</footer>