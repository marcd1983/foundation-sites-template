	<% include TitleBar %>
		<% if $Content %>
		<div class="grid-x grid-margin-x grid-margin-y content">
			<div class="cell">
			<h1>test</h1>
				$Content
			</div>
		</div>
		<% else %>
			<div class="grid-x grid-margin-x grid-margin-y">
				$ElementalArea
			</div>
		<% end_if %>
	<% include ChildGrid %>
$Form
$CommentsForm
