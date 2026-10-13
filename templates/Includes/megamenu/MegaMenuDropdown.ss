<!--  layout 4 -> single list, a plain (non-mega) Foundation dropdown submenu -->
<li class="$LinkingMode <% if $Children %>is-dropdown-submenu-parent<% end_if %>">
				<a href="$Link"<% if $OpenInNew %> target="_blank" rel="noopener noreferrer"<% end_if %> title="$Title.XML">$MenuTitle.XML</a>
				<% if $Children %>
				<ul class="menu dropdown is-dropdown-submenu" data-dropdown-menu>
					<% if $Children %>
					<% loop $Children %>
						<li class="$LinkingMode">
							<a href="$Link"<% if $OpenInNew %> target="_blank" rel="noopener noreferrer"<% end_if %> title="$Title.XML">$MenuTitle.XML</a>
							<% if $Children %>
							<ul class="menu is-dropdown-submenu">
								<% if $Children %>
								<% loop $Children %>
									<li class="$LinkingMode">
										<a href="$Link"<% if $OpenInNew %> target="_blank" rel="noopener noreferrer"<% end_if %> title="$Title.XML">$MenuTitle.XML</a>
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