<main id="Content" class="searchResults grid-container $PageWidth " role="main">
<div class="grid-x grid-padding-x grid-padding-y content">
<div class="cell">
<% include PageHeader %>
    <% if $Query %>
        <p class="searchQuery">You searched for &quot;{$Query}&quot;</p>
    <% end_if %>

    <% if $Results %>
    <ul id="SearchResults" class="menu vertical">
        <% loop $Results %>
        <li>
            <a href="$Link" class="card" style="margin-bottom: 1rem;">
            <div class="card-section">
            
            <h4 class="card-title">
                
                    <% if $MenuTitle %>
                    $MenuTitle
                    <% else %>
                    $Title
                    <% end_if %>
               
            </h4>
            <% if $Content %>
                <p>$Content.LimitWordCountXML</p>
            <% end_if %>
            <span class="readMoreLink" href="$Link" title="Read more about &quot;{$Title}&quot;">Read more about &quot;{$Title}&quot;...</span>
            </div>
            </a>
        </li>
        <% end_loop %>
    </ul>
    <% else %>
    <p>Sorry, your search query did not return any results.</p>
    <% end_if %>

    <%-- <% if $Results.MoreThanOnePage %>
    <div id="PageNumbers">
        <div class="pagination">
            <% if $Results.NotFirstPage %>
            <a class="prev" href="$Results.PrevLink" title="View the previous page">&larr;</a>
            <% end_if %>
            <span>
                <% loop $Results.Pages %>
                    <% if $CurrentBool %>
                    $PageNum
                    <% else %>
                    <a href="$Link" title="View page number $PageNum" class="go-to-page">$PageNum</a>
                    <% end_if %>
                <% end_loop %>
            </span>
            <% if $Results.NotLastPage %>
            <a class="next" href="$Results.NextLink" title="View the next page">&rarr;</a>
            <% end_if %>
        </div>
        <p>Page $Results.CurrentPage of $Results.TotalPages</p>
    </div>
    <% end_if %> --%>

</div>
</div>
</main>
