<%-- <% cached 'documentfooter', $CurrentMember.ID, $Locale, $SiteConfig.LastEdited %> --%>
<% require css('themes/foundation-theme/css/style.css') %>

<% if $SiteConfig.FooterScripts %>
    $SiteConfig.FooterScripts.RAW
<% end_if %>
<%-- <% end_cached %> --%>