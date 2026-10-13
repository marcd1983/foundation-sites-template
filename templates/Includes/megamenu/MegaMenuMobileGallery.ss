<!--  layout 3 -> gallery, a 2-up card grid on mobile -->
            <li>
                <a href="$Link"<% if $OpenInNew %> target="_blank" rel="noopener noreferrer"<% end_if %>>$MenuTitle</a>
                <% if $Children %>
                <ul class="menu vertical nested">
                    <li>
                        <div class="grid-x grid-margin-x grid-margin-y small-up-2">
                            <% loop $Children %>
                            <div class="cell mega-nav__card">
                                <a href="$Link"<% if $OpenInNew %> target="_blank" rel="noopener noreferrer"<% end_if %> class="mega-nav__card-media" style="padding:0px;"><% if $Photo %><% include ResponsiveImage Image=$Photo.ScaleWidth(300), Alt=$Title %><% end_if %></a>
                                <a href="$Link"<% if $OpenInNew %> target="_blank" rel="noopener noreferrer"<% end_if %> class="mega-nav__card-title">$Title</a>
                            </div>
                            <% end_loop %>
                        </div>
                    </li>
                </ul>
                <% end_if %>
            </li>
