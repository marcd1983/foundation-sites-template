<% cached 'breadcrumbs', $CurrentMember.ID, $Locale, $CurrentPage.ID, $CurrentPage.LastEdited %>
<% if $Level(2) %>
	<div id="Breadcrumbs">
	   	$Breadcrumbs
	</div>
<% end_if %>
<% end_cached %>
