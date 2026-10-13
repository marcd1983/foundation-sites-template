<!--  layout 2 -> multiple lists, built with Foundation's grid-x + vertical Menu -->
                        <li<% if $Children %> class="mega-nav__mega-parent is-dropdown-submenu-parent"<% end_if %>>
                            <a href="$Link"<% if $OpenInNew %> target="_blank" rel="noopener noreferrer"<% end_if %>>$MenuTitle</a>
                            <% if $Children %>
                            <ul class="menu mega-menu is-dropdown-submenu">
                                <li>
                                    <div class="grid-x grid-margin-x large-up-$MegaMenuColumns align-justify">

                                       <% loop $Children %>
                                        <div class="cell">
                                            <span class="mega-nav__label">$Title</span>
                                            <ul class="menu vertical mega-nav__sub-list">
                                                <li><a href="$Link"<% if $OpenInNew %> target="_blank" rel="noopener noreferrer"<% end_if %>>All $Title</a></li>
                                                <% if $Children %>
                                                <% loop $Children %>
                                                <li><a href="$Link"<% if $OpenInNew %> target="_blank" rel="noopener noreferrer"<% end_if %>>$MenuTitle</a></li>
                                                <% end_loop %>
                                                <% end_if %>
                                            </ul>
                                        </div>
                                        <% end_loop %>
                                        
                                        <% if not $HideParentCard %>
                                        <% if $Photo %>
                                        <div class="mega-nav__card cell">
                                            <a href="$Link"<% if $OpenInNew %> target="_blank" rel="noopener noreferrer"<% end_if %> class="mega-nav__card-media" style="padding:0px;"><% if $Photo %><% include ResponsiveImage Image=$Photo.ScaleWidth(300), Alt=$Title %><% end_if %></a>
                                            <a href="$Link"<% if $OpenInNew %> target="_blank" rel="noopener noreferrer"<% end_if %> class="mega-nav__card-title">View All $Title &rarr;</a>
                                        </div>
                                        <% end_if %>
                                        <% end_if %>
                                    </div>
                                </li>
                            </ul>
                            <% end_if %>
                        </li>
