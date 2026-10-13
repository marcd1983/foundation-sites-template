<!--  layout 2 -> multiple lists on desktop, flattened to grouped links on mobile -->
            <li>
                <a href="$Link"<% if $OpenInNew %> target="_blank" rel="noopener noreferrer"<% end_if %>>$MenuTitle</a>
                <% if $Children %>
                <ul class="menu vertical nested">
                    <% loop $Children %>
                    <li><span class="mega-nav__label">$Title</span></li>
                    <li><a href="$Link"<% if $OpenInNew %> target="_blank" rel="noopener noreferrer"<% end_if %>>All $Title</a></li>
                    <% if $Children %>
                    <% loop $Children %>
                    <li><a href="$Link"<% if $OpenInNew %> target="_blank" rel="noopener noreferrer"<% end_if %>>$MenuTitle</a></li>
                    <% end_loop %>
                    <% end_if %>
                    <% end_loop %>
                </ul>
                <% end_if %>
            </li>
