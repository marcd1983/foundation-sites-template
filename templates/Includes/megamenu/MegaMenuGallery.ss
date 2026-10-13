 <!--  layout 3 -> gallery, built with Foundation's grid-x + card -->
                        <li<% if $Children %> class="mega-nav__mega-parent is-dropdown-submenu-parent"<% end_if %>>
                            <a href="$Link"<% if $OpenInNew %> target="_blank" rel="noopener noreferrer"<% end_if %>>$MenuTitle</a>
                            <% if $Children %>
                            <ul class="menu mega-menu is-dropdown-submenu">
                                <li>
                                    <div class="grid-x grid-margin-x large-up-$MegaMenuColumns align-justify">
                                        <% loop $Children %>
                                        <div class="cell mega-nav__card">
                                            <% if $Photo %>
                                            <a href="$Link"<% if $OpenInNew %> target="_blank" rel="noopener noreferrer"<% end_if %> class="mega-nav__card-media" style="padding:0px;"><% if $Photo %><% include ResponsiveImage Image=$Photo.ScaleWidth(300), Alt=$Title %><% end_if %></a>
                                            <% end_if %>
                                            <a href="$Link"<% if $OpenInNew %> target="_blank" rel="noopener noreferrer"<% end_if %> class="mega-nav__card-title">$Title</a>
                                        </div>
                                        <% end_loop %>
                                    </div>
                                </li>
                            </ul>
                            <% end_if %>
                        </li>
