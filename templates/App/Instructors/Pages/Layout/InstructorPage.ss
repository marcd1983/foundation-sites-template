
    <% include TitleBar %>
    <% if $Content %>
    <div class="grid-x content">
        <div class="cell">
            $Content
        </div>
    </div>
    <% else %>
  
        <div class="grid-x grid-margin-x grid-margin-y">
            $ElementalArea
        </div>
  
    <% end_if %>
    <% if $InstructorList %>
    <div class="grid-x grid-margin-x grid-margin-y large-up-5">
        <% loop $InstructorList %>
        <div class="cell">
            <% include InstructorCard %>
        </div>
        <% end_loop %>
    </div>
    <% else %>
    <h3>Looking to Join our Studio? <a href="/Contact">Contact Us</a></h3>
    <% end_if %>
