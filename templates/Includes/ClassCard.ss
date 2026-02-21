<div class="card class-offering">
    <% if $Image %>
        <% loop $Image %>
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
        <h3 class="card-title">
            $Title
        </h3>
        <% if $AgeRange %>
        <p><strong>Ages:</strong> $AgeRange</p>
        <% end_if %>
        <% if $Summary %>
        <p>$Summary</p>
        <% end_if %>
        <% if $Instructors %>
        <p class="small-text">
            <strong>Instructors:</strong>
            <% loop $Instructors %>
            <a href="$Link">$DisplayName</a>
            <% if not $Last %>,
            <% end_if %>
            <% end_loop %>
        </p>
        <% end_if %>
        <div class="button-group small stacked-for-small">
            <a class="button" href="$Link">View details</a>
             <%-- <% include ArrowButton %> --%>
        </div>
    </div>
</div>