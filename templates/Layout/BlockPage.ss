<%-- inner --%>
<main class="main grid-container $PageWidth " role="main">
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
        <% include ChildGrid %>
        $Form
        $CommentsForm
</main>
