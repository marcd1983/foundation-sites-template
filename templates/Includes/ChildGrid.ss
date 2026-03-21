	
<% if not HideChildren %>
    <% if $Children %>
        <div class="child-grid grid-x grid-padding-x grid-padding-y large-up-{$Top.ChildGridColumns}">
            <% loop Children %>					
            <div class="cell text-center">
                <% include Card %>
            </div>
            <% end_loop %>
    </div>
    <% end_if %>
<% end_if %>