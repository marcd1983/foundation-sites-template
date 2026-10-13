<% cached 'childgrid', $CurrentMember.ID, $Locale, $CurrentPage.ID, $Children.max('LastEdited'), $Children.count %>
	
<% if not HideChildren %>
    <% if $Children %>
        <div class="child-grid grid-x grid-padding-x grid-padding-y large-up-{$Top.ChildGridColumns} mb-20">
            <% loop Children %>					
            <div class="cell">
                <% include Card %>
            </div>
            <% end_loop %>
        </div>
    <% end_if %>
<% end_if %>
<% end_cached %>