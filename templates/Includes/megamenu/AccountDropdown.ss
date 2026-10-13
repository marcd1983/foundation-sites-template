  <% if $MenuType('Account') %>
 <button class="mega-nav__icon-btn" type="button" data-toggle="accountDropdown" aria-label="Account settings">
                        <svg class="icon" viewBox="0 0 24 24">
                            <title>Go to account settings</title>
                            <g class="icon__group" fill="none" stroke="currentColor" stroke-linecap="square" stroke-miterlimit="10" stroke-width="2">
                                <circle cx="12" cy="6" r="4"/>
                                <path d="M12 13a8 8 0 00-8 8h16a8 8 0 00-8-8z"/>
                            </g>
                        </svg>
                    </button>
                    <div class="dropdown-pane" id="accountDropdown" data-dropdown data-hover="true" data-hover-pane="true" data-position="bottom" data-alignment="right">
                       
                        <ul class="menu vertical">
                            
                            <% loop $MenuType('Account') %>
                                <% loop $MenuItems %>
                                        <a href="$URL">$Title</a></li>
                                        <li>
                                        <% end_loop %>
                            <% end_loop %>
                            
                        </ul>
                       
                    </div>

 <% end_if %>    