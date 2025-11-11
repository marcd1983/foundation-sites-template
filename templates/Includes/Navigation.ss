<nav class="main-nav" role="navigation">
	<ul class="menu dropdown" data-dropdown-menu>
		<% loop $Menu(1) %>
			<li class="$LinkingMode">
				<a href="$Link" title="$Title.XML">$MenuTitle.XML</a>
				<% if $Children %>
				<ul class="menu dropdown" data-dropdown-menu>
					<% if $Children %>
					<% loop $Children %>
						<li class="$LinkingMode">
							<a href="$Link" title="$Title.XML">$MenuTitle.XML</a>
							<% if $Children %>
							<ul class="menu">
								<% if $Children %>
								<% loop $Children %>
									<li class="$LinkingMode">
										<a href="$Link" title="$Title.XML">$MenuTitle.XML</a>
									</li>
								<% end_loop %>
								<% end_if %>
							</ul>
							<% end_if %>
						</li>
					<% end_loop %>
					<% end_if %>
				</ul>
				<% end_if %>
			</li>
		<% end_loop %>
	</ul>
</nav>
