<%-- <% require css('silverstripe/blog: client/dist/styles/main.css') %> --%>
<% include TitleBar %>

        <article class="blog-entry grid-x <% if $SideBarView %>large-auto<% end_if %>">
			<div class="cell">
				<% if $FeaturedImage %>
					<% loop FeaturedImage %>
					<a href="$Up.Link" <% if Up.NewWindow = 1 %>target="_blank"<% end_if %>>
						<picture>
							<source media="(min-width:1024px)" srcset="<% if function_exists('FocusFill') %>$FocusFill(1440,400).URL<% else %>$Fill(1440,400).URL<% end_if %>">
							<source media="(max-width:1023px)" srcset="<% if function_exists('FocusFill') %>$FocusFill(1440,400).URL<% else %>$Fill(1440,400).URL<% end_if %>">
							<img src="<% if function_exists('FocusFill') %>$FocusFill(1440,400).URL<% else %>$ScaleMaxWidth(600).URL<% end_if %>"
								alt="Title.ATT" width="600" height="600"
								style="width:100%;height:auto;">
						</picture>
					</a>
					<% end_loop %>
				<% end_if %>
			</div>
			$Content
            $ElementalArea
			<% include SilverStripe\\Blog\\EntryMeta %>
			
        </article>
	$Form
	$CommentsForm

<% include SilverStripe\\Blog\\BlogSideBar %>
