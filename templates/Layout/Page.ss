

<main class="main grid-container $PageWidth" role="main">
	<% include TitleBar %>
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
</main>
$Form
$CommentsForm
