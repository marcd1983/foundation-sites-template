<main class="main" role="main">
    <% include SwiperSlider %>
    <div class="grid-container $PageWidth ">
        <% if $Content %>
                <div class="grid-x content">
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
    </div>
</main>
