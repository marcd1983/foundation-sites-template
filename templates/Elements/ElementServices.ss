<% require css('antlion/elemental-card:css/card.css') %>
    <% if $Title && $ShowTitle %>
        <% with $HeadingTag %>
            <{$Me} class="element-title">$Up.Title.XML</{$Me}>
        <% end_with %>
    <% end_if %>
    <% if $Content %><div class="element-content">$Content</div><% end_if %>

    <% if $ServiceList %>
        <% if $Appearance = 'Carousel' %>
            <% include ServiceCarousel %>
        <% else %>
            <% include ServiceGrid %>
        <% end_if %>    
    <% end_if %>
