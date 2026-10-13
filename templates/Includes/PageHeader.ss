<%-- <% cached 'titlebar', $CurrentMember.ID, $Locale, $CurrentPage.ID, $CurrentPage.LastEdited %> --%>

<% if not HidePageTitle %>
    <div class="page-header grid-x grid-margin-x grid-margin-y align-middle align-center">
        <div class="cell">
            <h1 class="page-title">$Title</h1>
            <% include BreadCrumbs %>
        </div>
    </div>
<% end_if %>
<%-- <% end_cached %> --%>