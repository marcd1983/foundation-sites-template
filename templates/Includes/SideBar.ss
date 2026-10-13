<% cached 'sidebar', $CurrentMember.ID, $Locale, $CurrentPage.ID, $Level(1).ID, $Level(1).LastEdited, $Menu(2).max('LastEdited'), $Menu(2).count %>
<aside class="sidebar unit size1of4">
	<% if $Menu(2) %>
		<nav class="secondary">
			<% with $Level(1) %>
				<h3>
					$MenuTitle
				</h3>
				<ul>
					<% include SidebarMenu %>
				</ul>
			<% end_with %>
		</nav>
	<% end_if %>
</aside>
<% end_cached %>
