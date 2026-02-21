<% if $RibbonCta %>
    <% loop $RibbonCta %>
        <% if $isCurrent %>
            <div class="ribbon-cta dark-gradient-bg" <% if $BackgroundImage %> style="background-image:url($BackgroundImage.URL);background-size:cover;background-position:center;background-attachment: scroll;"<% end_if %>>
                <div class="grid-container full <% if $Overlay = 1 %>dark-overlay<% end_if %>">
                    <div class="grid-x grid-margin-x grid-margin-y p-60">
                        <div class="cell text-center align-middle align-center">
                            
                            <% if $HideTitle %>
                            <h2>$Title</h2>
                            <% end_if %>
                            $Description
                        </div>
                        <div class="cell auto text-center">	
                            <div class="button-group align-center gap-6">
                            
                            </div>
                        </div>
                    </div>
                </div>	
            </div>
        <% end_if %> 
    <% end_loop %>
<% end_if %>