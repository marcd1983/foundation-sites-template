<% if $Image %>
<picture>
    <% with $Image.Convert('webp') %>
    <source srcset="$URL" type="image/webp">
    <% end_with %>
    <img src="$Image.URL" alt="$Alt.ATT"<% if $CSSClass %> class="$CSSClass"<% end_if %> loading="lazy">
</picture>
<% end_if %>
