<div class="feature-section p-y-80">
<div class="grid-container">
        <div class="grid-x grid-margin-x grid-margin-y">
            <div class="cell large-auto small-12">
                    $FeaturesContent 
                <% if $Features %>
                    <div class="grid-x grid-margin-x grid-margin-y large-up-2">
                        <% loop $Features %>
                            <div class="cell">
                            <div class="flex-container gap-16">
                                <div>
                                    <svg xmlns="http://www.w3.org/2000/svg" width="48" height="48" viewBox="0 0 48 48" fill="none">
                                        <path d="M13 21.5L22.5 31L45.5 8" stroke="#44131E" stroke-width="4" stroke-linecap="round"/>
                                        <path d="M46 24C46 28.3512 44.7097 32.6047 42.2923 36.2225C39.8749 39.8404 36.439 42.6602 32.419 44.3254C28.3991 45.9905 23.9756 46.4262 19.708 45.5773C15.4404 44.7284 11.5204 42.6331 8.44365 39.5564C5.3669 36.4796 3.2716 32.5596 2.42272 28.292C1.57385 24.0244 2.00952 19.6009 3.67465 15.581C5.33978 11.561 8.15957 8.12506 11.7775 5.70767C15.3953 3.29028 19.6488 2 24 2" stroke="#44131E" stroke-width="4" stroke-linecap="round"/>
                                    </svg>
                                </div>
                                <div>
                                 <% if $Title %>
                                    <h3 class="card-title" style="color:#fff;">$Title</h3>
                                <% end_if %>
                                <% if $Content %>
                                    <div>$Content</div>
                                <% end_if %> 
                                </div>
                            </div>
                            </div>
                        <% end_loop %>
                    </div>
                <% end_if %>
            </div>
            <div class="cell large-shrink small-12 align-self-bottom text-center">
                

                <% if $FeaturesSectionLink.Exists %>
                    <a href="$FeaturesSectionLink.URL" class="button-arrow large" <% if $FeaturesSectionLink.OpenInNew %>target="_blank" rel="noopener noreferrer"<% end_if %>>
                        <span>
                             $FeaturesSectionLink.Title.XML
                        </span>
                        <span>
                            <svg xmlns="http://www.w3.org/2000/svg" width="25" height="15" viewBox="0 0 25 15" fill="none">
                                <path d="M24.7071 8.07112C25.0976 7.6806 25.0976 7.04743 24.7071 6.65691L18.3431 0.292946C17.9526 -0.0975785 17.3195 -0.0975785 16.9289 0.292946C16.5384 0.68347 16.5384 1.31664 16.9289 1.70716L22.5858 7.36401L16.9289 13.0209C16.5384 13.4114 16.5384 14.0446 16.9289 14.4351C17.3195 14.8256 17.9526 14.8256 18.3431 14.4351L24.7071 8.07112ZM0 7.36401V8.36401H24V7.36401V6.36401H0V7.36401Z" fill="#111111"></path>
                            </svg>
                        </span>
                    </a>
                <% end_if %>
            </div>
        </div>
</div>
</div>
