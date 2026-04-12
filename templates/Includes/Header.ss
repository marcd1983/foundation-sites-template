<header class="header" role="banner">
    <div class="grid-container fluid">
        <div class="grid-x grid-margin-x grid-margin-y grid-padding-x grid-padding-y align-justify align-middle">
            <div class="cell shrink">
                <a href="$BaseHref" class="brand-logo flex-container align-middle align-center gap-20" rel="home">
                    <svg xmlns="http://www.w3.org/2000/svg" width="109" height="31" viewBox="0 0 109 31" fill="none">
                    <path d="M38.112 27.072H30.912L57.12 0H69.12V30.72H57.12V9.792L60.72 11.28L41.76 30.72H27.36L8.352 11.328L12 9.84V30.72H0V0H12L38.112 27.072Z" fill="black"/>
                    <path d="M68.7398 22.8V14.4H92.6918C93.6518 14.4 94.4518 14.256 95.0918 13.968C95.7638 13.648 96.0998 12.992 96.0998 12C96.0998 10.976 95.7638 10.32 95.0918 10.032C94.4518 9.744 93.6518 9.6 92.6918 9.6H69.5078V30.72H57.5078V0H90.8198C93.2198 0 95.4598 0.176001 97.5398 0.528002C99.6518 0.848001 101.492 1.44 103.06 2.304C104.628 3.168 105.86 4.384 106.756 5.952C107.652 7.52 108.1 9.536 108.1 12C108.1 14.464 107.652 16.416 106.756 17.856C105.86 19.296 104.628 20.368 103.06 21.072C101.492 21.776 99.6518 22.24 97.5398 22.464C95.4598 22.688 93.2198 22.8 90.8198 22.8H68.7398Z" fill="black"/>
                    </svg>
                    <%-- <h1>$SiteConfig.Title</h1> --%>
					<% if $SiteConfig.Tagline %>
                        <span>$SiteConfig.Tagline</span>
                    <% end_if %>
                </a>
            </div>
            <div class="cell auto show-for-large">
                <% if $SearchForm %>
                <button class="search-dropdown-icon">L</button>
                <div class="search-bar">
                    $SearchForm
                </div>
                <% end_if %>
                <%-- <% include Navigation %> --%>
                <% include MegaMenu %>
                <%-- <% include MegaMega %> --%>
            </div>

            <% if $Locations %>
            <div class="cell shrink show-for-large">
            <div class="menu align-center">
				<% loop $Locations %>
                    <% if $Phone %>
					    <a href="tel:$Phone.Plain"><svg xmlns="http://www.w3.org/2000/svg" width="15" height="15" viewBox="0 0 15 15" fill="none">
  <path d="M13.9358 4.44718C12.5989 9.0054 9.0054 12.5989 4.44718 13.9358C2.32735 14.5576 0.5 12.7091 0.5 10.5V10.25C0.5 9.69772 0.949155 9.25602 1.49792 9.19372C2.26566 9.10656 3.00327 8.92004 3.69758 8.64733L5.02695 9.9767C7.18911 8.94199 8.94199 7.18912 9.9767 5.02696L8.64733 3.69759C8.92004 3.00328 9.10656 2.26567 9.19372 1.49791C9.25602 0.949155 9.69771 0.5 10.25 0.5H10.5C12.7091 0.5 14.5576 2.32735 13.9358 4.44718Z" stroke="white" stroke-linecap="round" stroke-linejoin="round"/>
</svg> $Phone.XML</a>
					<% end_if %>
					<a href="$Link" class="footer-link"><svg xmlns="http://www.w3.org/2000/svg" width="15" height="15" viewBox="0 0 15 15" fill="none">
  <path d="M1.0701 5.99778L12.3997 0.602744C13.2499 0.19789 14.1373 1.08534 13.7325 1.93554L8.33743 13.2651C7.95808 14.0617 6.80805 14.0125 6.49824 13.1863L5.19893 9.72148C5.09752 9.45106 4.88415 9.23768 4.61373 9.13627L1.14891 7.83697C0.322736 7.52715 0.273457 6.37713 1.0701 5.99778Z" stroke="white" stroke-linecap="round" stroke-linejoin="round"/>
</svg> 
						<%-- <% if $LocationName %>
							$LocationName.XML
						<% end_if %> --%>
						<% if $Address %>
							$Address.XML
						<% end_if %>
						<% if $Address2 %>
							$Address2.XML
						<% end_if %>
						<% if $City || $State || $Zip %>
							$City.XML
							<% if $City && $State %>,
							<% end_if %>
							$State.XML
						<% if $Zip %>
							$Zip.XML
						<% end_if %>
						<% end_if %>
					</a>
					<% if $FullAddress %>
					<%-- Google Maps link (basic, no API key required) --%>
					<a target="_blank" rel="noopener" class="button small hollow dark" href="https://www.google.com/maps/search/?api=1&query=$FullAddress.URLEncode">
						Get Directions
					</a>
					<% end_if %>
                
                <% end_loop %>
            </div>
            </div>
            <% end_if %>
           
            <% loop $MenuType('Registration') %>
            <div class="cell shrink">
                <div class="menu gap-4 align-right align-middle">
                    <% loop $MenuItems %>
                    <a href="$URL" class="$LinkingMode icon-button  button <% if $isFirst %>light<% end_if %>">
                        <% if $isFirst %>
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 16 16" fill="none">
                            <path d="M13.151 13.6315C12.8471 12.7809 12.1775 12.0294 11.2461 11.4933C10.3146 10.9573 9.1734 10.6667 7.99935 10.6667C6.8253 10.6667 5.68406 10.9573 4.75262 11.4933C3.82119 12.0294 3.15161 12.7809 2.84774 13.6315" stroke="#111111" stroke-width="2" stroke-linecap="round" />
                            <circle cx="8.00065" cy="5.33342" r="2.66667" stroke="#111111" stroke-width="2" stroke-linecap="round" />
                        </svg>
                        <% end_if %>
                        $Title
                    </a>
                    <% end_loop %>
                </div>
            </div>
            <% end_loop %>
            <div class="cell shrink hide-for-large">
                <a class="slide-out-btn" id="slideMenu01">
                    <svg xmlns="http://www.w3.org/2000/svg" width="30" height="23" viewBox="0 0 30 23" fill="none">
                        <path d="M0 1.5H30M0 11.5H30M0 21.5H30" stroke="#111" stroke-width="3" />
                    </svg>
                </a>
            </div>
        </div>
    </div>
</header>
<% include SlideoutMenu %>