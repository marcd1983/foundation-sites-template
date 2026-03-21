
<%-- <% require css('antlion/elemental-card:css/card.css') %> --%>
<% if $Top.CardAppearance == 'Gradient' %>
    <% include GradientElementCard %>
<% else_if $Top.CardAppearance == 'Hover' %>
    <% include HoverElementCard %>
<% else_if $Top.CardAppearance == 'Horizontal' %>
    <% include HozElementCard %>
<% else %>
    <% include VertElementCard %>
<% end_if %>