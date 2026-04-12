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
        <span class="card-link flex-container align-middle gap-16">View Service Details <svg xmlns="http://www.w3.org/2000/svg" width="35" height="18" viewBox="0 0 35 18" fill="none">
  <path d="M0.311111 9.5302L28.5059 9.60783C24.4379 11.118 21.0344 13.9365 18.8415 17.528L18.5534 18H19.1072H19.8331H20.0038L20.0954 17.8563C23.0639 13.2054 28.2472 10.0097 34.2077 9.6493L34.5 9.63163V9.33942V8.6606V8.36837L34.2077 8.35072C28.2411 7.99035 23.0639 4.79462 20.0954 0.143678L20.0038 0H19.8331H19.1072H18.5534L18.8415 0.471965C21.0314 4.05884 24.429 6.87455 28.4897 8.3862L0.311111 8.30858H0V8.61902V9.21976V9.5302H0.311111Z" fill="white"/>
</svg></span>
    </div>
</a>

