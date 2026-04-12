<main class="main grid-container $PageWidth" role="main">
		<% include TitleBar %>

        <% if $Content %>
        <div class="grid-x grid-padding-x grid-padding-y content">
            <div class="cell">
                $Content
            </div>
        </div>
        <% else %>
            $ElementalArea
        <% end_if %>

        <% if $Services %>
            <div class="service-grid grid-x grid-padding-x grid-padding-y large-up-4 medium-up-3 small-up-2">
                <% loop $Services %>
                <div class="cell">
                    <% include ServiceHoverCard %>
                </div>
                <% end_loop %>
            </div>
        <% end_if %>
        <%-- <% include ChildGrid %> --%>
        $Form
        $CommentsForm
</main>