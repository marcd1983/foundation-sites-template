<div class="card blog-card">
    <div aria-hidden="true" class="">
        <img alt="<% if $FeaturedImage %>$FeaturedImage.Title<% else %>$Image.Title<% end_if %>" src="<% if $FeaturedImage %>$FeaturedImage.FocusFill(600,600).URL<% else %>$Image.URL<% end_if %>" />
        <%-- <div class="hover-card-gradient"></div> --%>
    </div>
    <div class="card-section">
        <h3 class="card-title">
			<% if $MenuTitle %>$MenuTitle
			<% else %>$Title<% end_if %>
		</h3>
        <p class="card-description"><% if $Excerpt %>$Excerpt<% else %>$Summary<% end_if %></p>
        
     
			<a href="$Link" class="button $CssClass $ExtraClass">
				<%t SilverStripe\\Blog\\Model\\Blog.ReadMoreAbout "Read more about '{title}'..." title=$Title %>
			</a>
		
    </div>
</div>


