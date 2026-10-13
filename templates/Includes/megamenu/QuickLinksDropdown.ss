<button class="mega-nav__icon-btn mega-nav__icon-btn--search" type="button" data-toggle="searchDropdown" aria-label="Toggle search">
                        <svg class="icon" viewBox="0 0 24 24">
                            <g class="icon__group" fill="none" stroke="currentColor" stroke-linecap="square" stroke-miterlimit="10" stroke-width="2">
                                <path d="M4.222 4.222l15.556 15.556"/>
                                <path d="M19.778 4.222L4.222 19.778"/>
                                <circle cx="9.5" cy="9.5" r="6.5"/>
                            </g>
                        </svg>
                    </button>
                    <div class="dropdown-pane mega-nav__search-pane" id="searchDropdown" data-dropdown data-position="bottom" data-alignment="right">
                        <% with $SearchForm %>
                        <form $AttributesHTML>
                            <div class="input-group">
                                <% loop $Fields %>$Field<% end_loop %>
                                <div class="input-group-button">
                                    <% loop $Actions %>$Field<% end_loop %>
                                </div>
                            </div>
                        </form>
                        <% end_with %>
                        <% if $MenuType('Quick Links') %>
                        <span class="mega-nav__label">Quick Links</span>
                        <ul class="menu vertical">
                            
                            <% loop $MenuType('Quick Links') %>
                                <% loop $MenuItems %>
                                        <a href="$URL">$Title</a></li>
                                        <li>
                                        <% end_loop %>
                            <% end_loop %>
                            
                        </ul>
                        <% end_if %>
                    </div>

                     