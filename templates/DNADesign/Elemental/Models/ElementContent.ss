<div class="cell <% if $Style %> $StyleVariant<% end_if %>">
	<% if $Title && $ShowTitle %>
        <% with $HeadingTag %>
            <{$Me} class="element-title">$Up.Title.XML</{$Me}>
        <% end_with %>
    <% end_if %>
    $HTML
</div>
