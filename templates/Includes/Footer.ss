<footer class="footer" role="contentinfo">
	<div class="nav-footer grid-container ">
		<div class="grid-x grid-padding-x grid-padding-y large-up-4">
			<% loop $MenuType('Footer') %>
				<% if $MenuItems %>
					<div class="cell shrink">
						<h4>$Name</h4>
						<div class="menu vertical">
							<% loop $MenuItems %>
							<a href="$Link" class="$LinkingMode"<% if $NewWindow %> target="_blank" rel="noopener"<% end_if %>>$Title</a>
							<% end_loop %>
						</div>
					</div>
				<% end_if %>
			<% end_loop %>
		</div>
	</div>
	<div class="sub-footer grid-container text-center-small">
		<div class="grid-x grid-padding-x grid-padding-y align-justify">
			<div class="cell large-shrink">
				<div class="menu">
					<a href="$BaseHref" class="brand" rel="home">$SiteConfig.Title</a>
				</div>
			</div>
			<div class="cell large-shrink">
				<% loop $MenuType('Copyright') %>
					<div class="cell large-shrink">
						<div class="menu">
							<% loop $MenuItems %>
								<a href="$Link" class="$LinkingMode">$Title</a>			
							<% end_loop %>
						</div>
					</div>
				<% end_loop %>
			</div>
			<div class="cell large-shrink">
				<div class="menu">
				<a href="https://marcusdeleon.com">Theme by Marcus De Leon</a>
				</div>
			</div>
		</div>
	</div>
</footer>