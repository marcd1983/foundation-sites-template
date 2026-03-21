<div class="card service-card">
    <% if $ServiceImage %>
    <% loop $ServiceImage %>
    <a href="$Up.Link">
        <picture>
            <source media="(min-width:1024px)" srcset="<% if function_exists('FocusFill') %>$FocusFill(600,600).URL<% else %>$Fill(600,600).URL<% end_if %>">
            <source media="(max-width:1023px)" srcset="<% if function_exists('FocusFill') %>$FocusFill(600,600).URL<% else %>$Fill(600,600).URL<% end_if %>">
            <img src="<% if function_exists('FocusFill') %>$FocusFill(600,600).URL<% else %>$ScaleMaxWidth(600).URL<% end_if %>" alt="Title.ATT" width="600" height="600" style="width:100%;height:auto;">
        </picture>
    </a>
    <% end_loop %>
    <% end_if %>
    <div class="card-section">
        <h3 class="card-title">$Title</h3>
        <% if $Summary %>
            <p>$Summary</p>
        <% end_if %>
        <p><a class="button" href="$Link">View Service</a></p>
    </div>
</div>