<div class="card">
<% if $Image %>
    <div class="zoom-container">
        <% if ElementLink %><a href="{$ElementLink.URL}"<% if $OpenInNew %>target="_blank"<% end_if %>><% end_if %>
            <img src="$Image.FocusFill(600,600).URL" class="zoom" alt="$Image.Title.ATT" loading="lazy">
        <% if ElementLink %></a><% end_if %>
    </div>
<% end_if %>
    <div class="card-section">
        <%-- <% if $Title && $ShowTitle %><$TitleTag class="element__title $TitleSizeClass">$Title</$TitleTag><% end_if %> --%>
        <% if $Title && $ShowTitle %><h3 class="card-title element__title $TitleSizeClass">$Title</h3><% end_if %>
        <% if $Content %>$Content<% end_if %>                    
        <% if $ElementLink.Exists %>
            <%-- <a class="button small $ElementLink.CssClass $ElementLink.ExtraClass" href="$ElementLink.URL" aria-label="$Title.XML" <% if $ElementLink.OpenInNew %>target="_blank" rel="noopener noreferrer"<% end_if %>>
                $ElementLink.Title.XML
            </a> --%>
            <% include ArrowButton %>
        <% end_if %>
    </div>
</div>