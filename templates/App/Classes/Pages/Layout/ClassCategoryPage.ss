
    <% include TitleBar %>
    <% if $Content %>
    <div class="grid-x grid-margin-x grid-margin-y content">
        <div class="cell">
            $Content
        </div>
    </div>
    <% end_if %>
    <% if $ElementalArea %>
        <div class="grid-x grid-margin-x grid-margin-y">
            $ElementalArea
        </div>
    <% end_if %>
    <% if $OfferingsSorted %>
    <div id="class-section" class="grid-x grid-margin-x grid-margin-y large-up-5 medium-up-3 small-up-2">
        <% loop $OfferingsSorted %>
        <div class="cell offering">
            <% include ClassCard %>
        </div>
        <% end_loop %>
    </div>
    <% end_if %>
    <% if $CategoryInstructors %>
    <h2 id="meet-instructors"class="section-title text-center">Meet the Instructors</h2>
    <div class="grid-x grid-margin-x grid-margin-y large-up-5 medium-up-3 small-up-2">
        <% loop $CategoryInstructors %>
        <div class="cell">
            <% include InstructorCard %>
        </div>
        <% end_loop %>
    </div>
    <% end_if %>
    <% include ChildGrid %>
