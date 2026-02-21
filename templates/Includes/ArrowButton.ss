
<a href="<% if $ElementLink %>$ElementLink.URL<% else %>$Link<% end_if %>" class="button-arrow <% if $ElementLink %>$ElementLink.ExtraClass<% end_if %>" <% if $ElementLink.OpenInNew %>target="_blank" rel="noopener noreferrer"<% end_if %>>
    <span>
        <% if $ElementLink %>$ElementLink.Title.XML<% else %>View Details<% end_if %>
    </span>
    <span>
        <svg xmlns="http://www.w3.org/2000/svg" width="25" height="15" viewBox="0 0 25 15" fill="none">
            <path d="M24.7071 8.07112C25.0976 7.6806 25.0976 7.04743 24.7071 6.65691L18.3431 0.292946C17.9526 -0.0975785 17.3195 -0.0975785 16.9289 0.292946C16.5384 0.68347 16.5384 1.31664 16.9289 1.70716L22.5858 7.36401L16.9289 13.0209C16.5384 13.4114 16.5384 14.0446 16.9289 14.4351C17.3195 14.8256 17.9526 14.8256 18.3431 14.4351L24.7071 8.07112ZM0 7.36401V8.36401H24V7.36401V6.36401H0V7.36401Z" fill="#111111"/>
        </svg>
    </span>
</a>
