<section class="page cf">

	<main class="grid-container $PageWidth" role="main" id="typography sitemap">

		<div class="grid-x grid-margin-x sitemap-inner">

			<% if $Sitemap %>
					
				$Sitemap.RAW

			<% else %>
			
				<p>There are no pages in this site yet.</p>
			
			<% end_if %>
			
			<div class="clear"></div>

		</div>
	</main>

</section>

$ElementalArea