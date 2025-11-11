
    <div class="mega-menu hide-small-only">
        <%-- <div class="hide-for-large">
            <% if SiteConfig.SiteLogo %>
                <a href="/" class="show-for-large-up float-left">
                    $SiteConfig.SiteLogo
                </a>
                <% else %>
                <h1 class="show-for-large-up float-left" style="font-size:32px;font-weight:700;padding:12px;margin:0;">
                    <a style="" href="{$baseUrl}">$SiteConfig.Title</a>
                </h1>
            <% end_if %>
            <a href="" class="mega-menu-mobile float-right">
            <i class="fas fa-bars"></i>
            </a>
        </div> --%>
        <ul>
            <% loop Menu(1) %>
            <li class="<% if $LinkingMode == " current" || $LinkingMode=="section" %>active<% end_if %><% if $Children %> has-dropdown<% end_if %>">
                <a href="$Link" title="Go to $Title.ATT">$MenuTitle<% if $Children %> <i class="fas fa-angle-down show-for-large" style="margin:4px 0 0 4px;"></i><% end_if %></a>
                <% if $Children %>
                <ul>
                    <% loop $Children %>
                    <li class="<% if $LinkingMode == " current" || $LinkingMode=="section" %>active
                        <% end_if %>
                        <% if $Children %> has-dropdown
                        <% end_if %>">
                        <a href="$Link" title="Go to $Title.ATT">$MenuTitle
                            <% if $Children %> <i class="fas fa-angle-down show-for-large" style="margin:4px 0 0 4px;"></i>
                            <% end_if %></a>
                        <% if $Children %>
                        <ul>
                            <% loop $Children %>
                            <li class="<% if $LinkingMode == " current" || $LinkingMode=="section" %>active
                                <% end_if %>">
                                <a href="$Link" title="Go to $Title.ATT">$MenuTitle</a>
                            </li>
                            <% end_loop %>
                        </ul>
                        <% end_if %>
                    </li>
                    <% end_loop %>
                </ul>
                <% end_if %>
            </li>
            <% end_loop %>
        </ul>
    </div>