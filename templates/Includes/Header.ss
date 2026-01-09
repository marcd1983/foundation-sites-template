<header class="header" role="banner">
	<div class="grid-container">
		<div class="grid-x grid-padding-x grid-padding-y align-justify align-middle">
			<div class="cell shrink">
				<a href="$BaseHref" class="brand-logo flex-container flex-dir-column" rel="home">
					<h1>$SiteConfig.Title</h1>
					<% if $SiteConfig.Tagline %>
					<span>$SiteConfig.Tagline</span>
					<% end_if %>
				</a>
			</div>
			<div class="cell shrink">
				<% if $SearchForm %>
					<button class="search-dropdown-icon">L</button>
					<div class="search-bar">
						$SearchForm
					</div>
				<% end_if %>
				<%-- <% include Navigation %> --%>
				<% include MegaMenu %>
				<%-- <% include MegaMega %> --%>
			</div>
		</div>
	</div>
</header>
