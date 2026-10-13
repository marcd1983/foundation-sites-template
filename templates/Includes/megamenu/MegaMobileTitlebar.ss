<!--  small screens: Foundation title-bar -->
            <div class="title-bar hide-for-large">
                <div class="title-bar-left">
                    <span class="title-bar-title"><a href="#0" class="mega-nav__logo">This Logo</a></span>
                </div>
                
                <div class="title-bar-right">
                    <a href="#0" class="mega-nav__icon-btn" aria-label="Account settings">
                        <svg class="icon" viewBox="0 0 24 24">
                            <title>Go to account settings</title>
                            <g class="icon__group" fill="none" stroke="currentColor" stroke-linecap="square" stroke-miterlimit="10" stroke-width="2">
                                <circle cx="12" cy="6" r="4"/>
                                <path d="M12 13a8 8 0 00-8 8h16a8 8 0 00-8-8z"/>
                            </g>
                        </svg>
                    </a>
                    <button class="mega-nav__icon-btn mega-nav__icon-btn--search" type="button" data-toggle="mobileSearchDropdown" aria-label="Toggle search">
                        <svg class="icon" viewBox="0 0 24 24">
                            <g class="icon__group" fill="none" stroke="currentColor" stroke-linecap="square" stroke-miterlimit="10" stroke-width="2">
                                <path d="M4.222 4.222l15.556 15.556"/>
                                <path d="M19.778 4.222L4.222 19.778"/>
                                <circle cx="9.5" cy="9.5" r="6.5"/>
                            </g>
                        </svg>
                    </button>
                    <button class="mega-nav__icon-btn mega-nav__icon-btn--menu" type="button" data-toggle="off-canvas" aria-label="Toggle menu">
                        <svg class="icon" viewBox="0 0 24 24">
                            <g class="icon__group" fill="none" stroke="currentColor" stroke-linecap="square" stroke-miterlimit="10" stroke-width="2">
                                <path d="M1 6h22"/>
                                <path d="M1 12h22"/>
                                <path d="M1 18h22"/>
                            </g>
                        </svg>
                    </button>
                </div>
            </div>

            <div class="dropdown-pane mega-nav__search-pane hide-for-large" id="mobileSearchDropdown" data-dropdown data-position="bottom" data-alignment="right">
                <input class="input-group-field" type="search" name="megasite-search-mobile" placeholder="Search..." aria-label="Search">
                <span class="mega-nav__label">Quick Links</span>
                <ul class="menu vertical">
                    <li><a href="#0">Find a Store</a></li>
                    <li><a href="#0">Your Orders</a></li>
                    <li><a href="#0">Documentation</a></li>
                    <li><a href="#0">Questions &amp;Answers</a></li>
                    <li><a href="#0">Contact Us</a></li>
                </ul>
            </div>