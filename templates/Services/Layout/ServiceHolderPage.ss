<main class="main grid-container $PageWidth" role="main">
		<% include PageHeader %>

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
        <% cached 'serviceholder-grid', $CurrentMember.ID, $Locale, $CurrentPage.ID, $Services.max('LastEdited'), $Services.count %>
            <div class="service-grid grid-x grid-padding-x grid-padding-y large-up-4 medium-up-3 small-up-2">
                <% loop $Services %>
                <div class="cell">
                    <% include Includes/service/ServiceHoverCard %>
                </div>
                <% end_loop %>
            </div>
        <% end_cached %>
        <% end_if %>
        <%-- <% include ChildGrid %> --%>
        $Form
        $CommentsForm
</main>