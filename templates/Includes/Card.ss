<% cached 'card', $CurrentMember.ID, $Locale, $ID, $LastEdited %>
<div class="card">
        <% if $Photo %>
            <a href="$Link" <% if $NewWindow = 1 %>target="_blank"<% end_if %>>
                <picture>
                    <source media="(min-width:1024px)" srcset="<% if function_exists('FocusFill') %>$Photo.FocusFill(600,600).URL<% else %>$Photo.Fill(600,600).URL<% end_if %>">
                    <source media="(max-width:1023px)" srcset="<% if function_exists('FocusFill') %>$Photo.FocusFill(600,600).URL<% else %>$Photo.Fill(600,600).URL<% end_if %>">
                    <img src="<% if function_exists('FocusFill') %>$Photo.FocusFill(600,600).URL<% else %>$Photo.ScaleMaxWidth(600).URL<% end_if %>"
                        alt="$Title.ATT" width="600" height="600"
                        style="width:100%;height:auto;">
                </picture>
            </a>
        <% end_if %>
    <div class="card-section">
        <h3 class="card-title"><a <% if NewWindow = 1 %>target="_blank" rel="noopener noreferrer"<% end_if %> href="$Link">$MenuTitle</a></h3>
        <a class="button" href="$Link" <% if NewWindow = 1 %>target="_blank"<% end_if %>>Go To $Title</a>
    </div>
</div>
<% end_cached %>