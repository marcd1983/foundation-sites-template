<a class="card hover-card <% if $InSection('home') %>reverse<% end_if %>" href="$Link">
    <% if $ServiceImage %>
        <div class="zoom">
            <img src="$ServiceImage.FocusFill(400,600).URL" alt="$ServiceImage.Title.ATT" loading="lazy">
        </div>
    <% end_if %>

    <div class="card-section p-40">
        <h3 class="card-title element__title">$Title</h3>
        <% if $Summary %>
            <p class="card-description">$Summary</p>
        <% end_if %>
        <span class="card-link">View Service Details</span>
    </div>
</a>

