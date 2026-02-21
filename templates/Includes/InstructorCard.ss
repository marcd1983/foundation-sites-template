<div class="card instructor">
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
        <h3 class="card-title">$FirstName $LastName</h3>
        <% if $InstructorTitle %>
        <p><strong>$InstructorTitle</strong></p>
        <% end_if %>
        <% if $Specialties %>
        <p class="small-text">$Specialties</p>
        <% end_if %>
        <%-- <% if $Bio %>
        <p>$Bio.Summary(20)</p>
        <% end_if %> --%>
        <p><a class="button small hollow" href="$Link">View Instructor</a></p>
    </div>
</div>