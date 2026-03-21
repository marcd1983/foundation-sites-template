<div class="element-grid grid-x grid-padding-x grid-padding-y large-up-4 small-up-2">
    <% loop $ServiceList.Sort(SortOrder) %>
        <div class="cell">
            <% include ServiceHoverCard %>
        </div>
    <% end_loop %>
</div>