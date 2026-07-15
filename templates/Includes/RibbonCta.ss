<% require css('antlion/element-container:css/element-container.css') %>
<% if $RibbonCta %>
<% loop $RibbonCta %>
<% if $isCurrent %>
    <div class="ribbon-cta $MarginClasses" style="<% if $BackgroundColor %>background-color: #{$BackgroundColor};<% end_if %><% if $BackgroundImage %>background-image:url('{$BackgroundImage.URL}');background-position: center;background-size: cover;background-repeat: no-repeat;<% end_if %>">
    <% if $HasOverlay %><div class="<% if $GlassEffect %>frost<% end_if %>" style="background-color:{$OverlayRGBA}"><% end_if %>
        <div class="grid-container $ContainerWidth">
        <div class="grid-x grid-padding-x grid-padding-y $PaddingClasses">
            <div class="cell">
            <% if $HideTitle %>
                <h2>$Title</h2>
            <% end_if %>
                $Description
             <% if $Links.Exists %>
                <div class="button-group large align-center">
                <% loop $Links %>
                    <a class="button $CssClass $ExtraClass" href="$URL" <% if $OpenInNew %>target="_blank" rel="noopener noreferrer"<% end_if %>>$Title.XML</a>
                <% end_loop %>
                </div>
            <% end_if %>    
            </div>
        </div>
        </div>
    <% if $HasOverlay %></div><% end_if %>
    </div>
<% end_if %> 
<% end_loop %>
<% end_if %>

