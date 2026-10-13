<% cached 'megaoffcanvas', $Locale, $Menu(1).max('LastEdited'), $Menu(1).count, $MenuType('Header Right').max('LastEdited'), $MenuType('Header Right').count %>
    <!-- ============================================================
         Off-canvas mobile menu (Foundation's Off-canvas + Accordion Menu)
         ============================================================ -->
    <div class="off-canvas position-right is-transition-push is-closed" id="off-canvas" data-off-canvas aria-hidden="true">
        <button class="close-button" aria-label="Close menu" type="button" data-close>
            <span aria-hidden="true">&times;</span>
        </button>
        <ul class="vertical menu accordion-menu mega-nav__mobile-menu" data-accordion-menu>
            <li class="mega-nav__label">Menu</li>

            <% loop Menu(1) %>
                <% if $MegaMenuLayout == 'Tabs' %>
                    <% include Includes/megamenu/MegaMenuMobileTabs %>
                <% else_if $MegaMenuLayout == 'List' %>
                    <% include Includes/megamenu/MegaMenuMobileList %>
                <% else_if $MegaMenuLayout == 'Gallery' %>
                    <% include Includes/megamenu/MegaMenuMobileGallery %>
                <% else %>
                    <% include Includes/megamenu/MegaMenuMobileDropdown %>
                <% end_if %>
            <% end_loop %>
            <% if $MenuType('Header Right') %>
            <li class="mega-nav__label">Other</li>
             
                        <% loop $MenuType('Header Right') %>
                                <% loop $MenuItems %>
                                <li>
                                <a href="$URL" class="$LinkingMode button expanded">
                                    $Title
                                </a>
                                </li>
                                <% end_loop %>
                        <% end_loop %>
            <% end_if %>
        </ul>
    </div>
<% end_cached %>
