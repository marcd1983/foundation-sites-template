

<main  class="main grid-container $PageWidth" role="main">
	<% include TitleBar %>
	<h1>BlockPage Layout</h1>
		<% if $Content %>
		<div class="grid-x content">
			<div class="cell">
			<h1>test</h1>
				$Content
			</div>
		</div>
		<% else %>
			$ElementalArea
		<% end_if %>
	<% include ChildGrid %>
</main>
$Form
$CommentsForm
