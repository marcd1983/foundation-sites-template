 <% include Includes/megamenu/MegaOffCanvas %>
    <% cached 'foundationmegamenu', $Locale, $CurrentPage.ID, $Menu(1).max('LastEdited'), $Menu(1).count, $MenuType('Account').max('LastEdited'), $MenuType('Account').count, $MenuType('Quick Links').max('LastEdited'), $MenuType('Quick Links').count, $MenuType('Header Right').max('LastEdited'), $MenuType('Header Right').count, $SiteConfig.LastEdited %>
    <!-- ============================================================
         Page / header, shifted by the off-canvas panel above
         ============================================================ -->
    <div class="off-canvas-content" data-off-canvas-content>
        <header class="mega-nav">
            <% include Includes/megamenu/MegaMobileTitlebar %>
            

            <!--  large screens: logo + Foundation Dropdown Menu (mega menu) + actions -->
            <div class="grid-container fluid">
            <div class="grid-x align-middle gap-20 mega-nav__container show-for-large">
                <div class="cell shrink">
                    <a href="$BaseHref" class="brand-logo flex-container align-middle align-center gap-20" rel="home">
                    <svg xmlns="http://www.w3.org/2000/svg" width="109" height="31" viewBox="0 0 109 31" fill="none" aria-hidden="true" focusable="false">
                    <path d="M38.112 27.072H30.912L57.12 0H69.12V30.72H57.12V9.792L60.72 11.28L41.76 30.72H27.36L8.352 11.328L12 9.84V30.72H0V0H12L38.112 27.072Z" fill="black"/>
                    <path d="M68.7398 22.8V14.4H92.6918C93.6518 14.4 94.4518 14.256 95.0918 13.968C95.7638 13.648 96.0998 12.992 96.0998 12C96.0998 10.976 95.7638 10.32 95.0918 10.032C94.4518 9.744 93.6518 9.6 92.6918 9.6H69.5078V30.72H57.5078V0H90.8198C93.2198 0 95.4598 0.176001 97.5398 0.528002C99.6518 0.848001 101.492 1.44 103.06 2.304C104.628 3.168 105.86 4.384 106.756 5.952C107.652 7.52 108.1 9.536 108.1 12C108.1 14.464 107.652 16.416 106.756 17.856C105.86 19.296 104.628 20.368 103.06 21.072C101.492 21.776 99.6518 22.24 97.5398 22.464C95.4598 22.688 93.2198 22.8 90.8198 22.8H68.7398Z" fill="black"/>
                    </svg>
                    <%-- <h1 class="h5">$SiteConfig.Title</h1> --%>
                    <span class="show-for-sr">$SiteConfig.Title.XML</span>
					<% if $SiteConfig.Tagline %>
                        <span>$SiteConfig.Tagline</span>
                    <% end_if %>
                </a>
                </div>

                <div class="cell auto">
                    <ul class="dropdown menu mega-nav__menu" data-dropdown-menu data-hover="true" data-hover-timeout="250" data-closing-time="150" data-close-on-click-inside="false">
                            <% loop Menu(1) %>
                                <% if $MegaMenuLayout == 'Tabs' %>
                                    <% include Includes/megamenu/MegaMenuTabs %>
                                <% else_if $MegaMenuLayout == 'List' %>
                                    <% include Includes/megamenu/MegaMenuList %>
                                <% else_if $MegaMenuLayout == 'Gallery' %>
                                    <% include Includes/megamenu/MegaMenuGallery %>
                                <% else %>
                                    <% include Includes/megamenu/MegaMenuDropdown %>
                                <% end_if %>
                            <% end_loop %>
                        </ul>
                    </div>

                    <div class="cell shrink mega-nav__actions">
                        <% include Includes/megamenu/AccountDropdown %>
                        <% include Includes/megamenu/QuickLinksDropdown %>
                        <% if $MenuType('Header Right') %>
                        <% loop $MenuType('Header Right') %>
                                <% loop $MenuItems %>
                                <a href="$URL" class="$LinkingMode button primary mega-nav__btn">
                                    $Title
                                </a>
                                <% end_loop %>
                        <% end_loop %>
                        <% end_if %>
                    </div>
                </div>
            </div>
        </header>
    </div>
    <% end_cached %>