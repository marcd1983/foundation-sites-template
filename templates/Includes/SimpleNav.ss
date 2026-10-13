<% cached 'simplenav', $CurrentMember.ID, $Locale, $CurrentPage.ID, $Menu(1).max('LastEdited'), $Menu(1).count %>
<nav class="main-nav">
	<ul class="menu">
		<% loop $Menu(1) %>
			<li class="$LinkingMode">
				<a href="$Link" title="$Title.XML">$MenuTitle.XML</a>
			</li>
		<% end_loop %>
	</ul>
</nav>
<% end_cached %>
