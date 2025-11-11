	
<% if not HideChildren %>
    <% if $Children %>
    <div class="child-grid">
        <div class="grid-x grid-padding-x grid-padding-y large-up-{$Top.ChildGridColumns}">
            <% loop Children %>					
            <div class="cell text-center">
                <div class="card">
                    <% if Photo %>
                        <% loop Photo %>
                        <a href="$Up.Link" <% if Up.NewWindow = 1 %>target="_blank"<% end_if %>><img src="$URL" class="zoom" alt="$Up.Title" title="$Up.Title"></a>
                        <% end_loop %>
                    <% else %>
                        <div class="card-section">
                            <h3 class="card-title"><a <% if NewWindow = 1 %>target="_blank" rel="noopener noreferrer"<% end_if %> href="$Link">$MenuTitle</a></h3>
                            <a class="button" href="$Link" <% if NewWindow = 1 %>target="_blank"<% end_if %>>Go To $Title</a>
                        </div>
                    <% end_if %>
                </div>
            </div>
            <% end_loop %>
        </div>
    </div>
    <% end_if %>
<% end_if %>