<!--  layout 4 -> single list, same shape on mobile as desktop -->
            <li>
                <a href="$Link"<% if $OpenInNew %> target="_blank" rel="noopener noreferrer"<% end_if %>>$MenuTitle</a>
                <% if $Children %>
                <ul class="menu vertical nested">
                    <% loop $Children %>
                    <li><a href="$Link"<% if $OpenInNew %> target="_blank" rel="noopener noreferrer"<% end_if %>>$MenuTitle</a></li>
                    <% end_loop %>
                </ul>
                <% end_if %>
            </li>
