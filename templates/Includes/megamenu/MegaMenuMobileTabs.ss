<!--  layout 1 -> tabbed content on desktop, flattened to a link list on mobile -->
            <li>
                <a href="$Link"<% if $OpenInNew %> target="_blank" rel="noopener noreferrer"<% end_if %>>$MenuTitle</a>
                <% if $Children %>
                <ul class="menu vertical nested">
                    <% loop $Children %>
                    <li><a href="$Link"<% if $OpenInNew %> target="_blank" rel="noopener noreferrer"<% end_if %>><% if $Photo %><% include ResponsiveImage Image=$Photo.ScaleWidth(56), Alt="", CSSClass="mega-nav__mobile-avatar" %><% end_if %>$MenuTitle</a></li>
                    <% end_loop %>
                </ul>
                <% end_if %>
            </li>
