<%-- <% require css('silverstripe/blog: client/dist/styles/main.css') %> --%>

<div class="blog-entry content-container <% if $SideBarView %>unit size3of4<% end_if %>">
	<article>
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
		<div class="grid-x grid-margin-x grid-margin-y large-up-3">
			<% if $PaginatedList.Exists %>
				<% loop $PaginatedList %>
					<div class="cell">
						<% include SilverStripe\\Blog\\PostSummary %>
					</div>
				<% end_loop %>
			<% else %>
				<div class="cell">
					<div class="callout p-40 text-center">
						<p class="lead"><%t SilverStripe\\Blog\\Model\\Blog.NoPosts 'There are no posts' %></p>
							<a href="/classes" class="button large">View Classes</a>
					</div>
				</div>
			<% end_if %>
		</div>
		
	</article>

	$Form
	$CommentsForm

	<% with $PaginatedList %>
		<% include SilverStripe\\Blog\\Pagination %>
	<% end_with %>
</main>

<% include SilverStripe\\Blog\\BlogSideBar %>
