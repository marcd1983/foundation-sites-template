<!--  layout 1 -> tabbed content, built with Foundation's vertical Tabs -->
                        <li<% if $Children %> class="mega-nav__mega-parent is-dropdown-submenu-parent"<% end_if %>>
                            <a href="$Link"<% if $OpenInNew %> target="_blank" rel="noopener noreferrer"<% end_if %>>$MenuTitle</a>
                            <% if $Children %>
                            <ul class="menu mega-menu is-dropdown-submenu">
                                <li>
                                    <div class="grid-x grid-margin-x align-justify">
                                        <div class="cell small-3">
                                            <ul class="tabs mega-nav__tabs vertical" data-tabs id="menuTabs-$ID" data-deep-link="true" data-update-history="true" data-deep-link-smudge="true" data-deep-link-smudge-delay="500" data-tabs id="deeplinked-tabs">
                                                <% loop $Children %>
                                                <li class="tabs-title<% if $ID == $Up.Children.First %> is-active<% end_if %>">
                                                    <a href="#menuTab-$ID"<% if $IsFirst %> aria-selected="true"<% end_if %>>
                                                        <% if $Photo %><% include ResponsiveImage Image=$Photo.ScaleWidth(64), Alt="", CSSClass="mega-nav__tabs-avatar" %><% end_if %>$MenuTitle
                                                    </a>
                                                </li>
                                                <% end_loop %>
                                            </ul>
                                          
                                        </div>
                                        <div class="cell small-8">
                                            <div class="tabs-content mega-nav__tabs-content vertical" data-tabs-content="menuTabs-$ID" data-tabs-content="deeplinked-tabs">
                                                <% loop $Children %>
                                                <div class="tabs-panel<% if $IsFirst %> is-active<% end_if %>" id="menuTab-$ID">
                                                    <% if $Photo %>
                                                    <a href="$Link"<% if $OpenInNew %> target="_blank" rel="noopener noreferrer"<% end_if %> class="mega-nav__tabs-img" style="padding:0px;margin-bottom:1rem;"><% include ResponsiveImage Image=$Photo.FocusFill(800,300), Alt=$Title %></a>
                                                    <% end_if %>
                                                    <h3 class="h5">$Title</h3>
                                                    <% if $Description %><p>$Description</p><% end_if %>
                                                    <p><a href="$Link" class="button hollow"<% if $OpenInNew %> target="_blank" rel="noopener noreferrer"<% end_if %>>View $Title</a></p>
                                                      <% if $Links.Exists %>
                                                      
                                                            <% loop $Links %>
                                                                <p><a class="button $CssClass $ExtraClass"<% if $ModalTarget %> data-remodal-target="$ModalTarget"<% else %> href="$URL"<% end_if %><% if $OpenInNew %> target="_blank" rel="noopener noreferrer"<% end_if %>>$Title.XML</a></p>
                                                            <% end_loop %>
                                                       
                                                        <% end_if %>
                                                </div>
                                                <% end_loop %>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                            <% end_if %>
                        </li>
