<nav class="mega-menu hide-small-only">
    <ul>
        <% loop Menu(1) %>
        <li class="<% if $LinkingMode == 'current' || $LinkingMode == 'section' %>active<% end_if %>">
            <a href="$Link" title="Go to $Title.ATT">
                $MenuTitle
                <% if $Children %><svg xmlns="http://www.w3.org/2000/svg" width="14" height="9" viewBox="0 0 14 9" fill="none"><path d="M1 1L7 7L13 1" stroke="black" stroke-width="2"/></svg><% end_if %>
            </a>
            <% if $Children %>
            <ul class="shadow">
                <% loop $Children %>
                <li class="<% if $LinkingMode == 'current' || $LinkingMode == 'section' %>active<% end_if %>">
                    <a href="$Link" title="Go to $Title.ATT">
                        <%-- <% if ShowPhoto %> --%>
                            <% if Photo %>
                                <img class="mega-menu-image" src="$Photo.ScaleWidth(400).URL" alt="$PagePhoto.Title">
                            <% end_if %>
                        <%-- <% end_if %> --%>
                        $MenuTitle
                    </a>
                    <% if $Children %>
                    <ul>
                        <% loop $Children %>
                        <li class="<% if $LinkingMode == 'current' || $LinkingMode == 'section' %>active<% end_if %>">
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
</nav>