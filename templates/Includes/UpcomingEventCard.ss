
<div class="card event-card <% if not $Image %>no-photo<% end_if %>">
                            <% if $Image %>
                            <%-- <% if $Top.Lazy %>
                            <picture>
                                <source media="(min-width:1024px)" data-srcset="<% if function_exists('FocusFill') %>$Image.FocusFill(600,600).URL<% else %>$Image.Fill(600,600).URL<% end_if %>">
                                <source media="(max-width:1023px)" data-srcset="<% if function_exists('FocusFill') %>$Image.FocusFill(600,600).URL<% else %>$Image.Fill(600,600).URL<% end_if %>">
                                <img class="swiper-lazy" data-src="<% if function_exists('FocusFill') %>$Image.FocusFill(600,600).URL<% else %>$Image.ScaleMaxWidth(600).URL<% end_if %>" alt="$Image.Title.ATT" width="600" height="600" style="width:100%;height:auto;">
                            </picture>
                            <div class="swiper-lazy-preloader"></div>
                            <% else %> --%>
                            <picture>
                                <source media="(min-width:1024px)" srcset="<% if function_exists('FocusFill') %>$Image.FocusFill(400,600).URL<% else %>$Image.Fill(400,600).URL<% end_if %>">
                                <source media="(max-width:1023px)" srcset="<% if function_exists('FocusFill') %>$Image.FocusFill(400,600).URL<% else %>$Image.Fill(400,600).URL<% end_if %>">
                                <img src="<% if function_exists('FocusFill') %>$Image.FocusFill(400,600).URL<% else %>$Image.ScaleMaxWidth(600).URL<% end_if %>" alt="$Image.Title.ATT" width="400" height="600" style="width:100%;height:auto;">
                            </picture>
                            <%-- <% end_if %> --%>
                            <% end_if %>
                            <div class="card-section flex-container flex-dir-column align-justify">
                                <div class="text-right">
                                    <% if $StartDate %>
                                    <p>$StartDate.Nice</p>
                                    <% else %>
                                    <p>$EndDate.Nice</p>
                                    <% end_if %>
                                    <%-- <% if $EventTimeDisplay %>
                                    <p class="dates">$EventTimeDisplay</p>
                                    <% end_if %> --%>
                                </div>
                                <div>
                                    <% if $Title %>
                                    <h3 class="card-title">$Title</h3>
                                    <% end_if %>
                                    <% if $Summary %>
                                    <p class="event-summary">$Summary</p>
                                    <% end_if %>
                                    <a href="$Link" class="button-arrow">
                                        <span>
                                            View $Title
                                        </span>
                                        <span>
                                            <svg xmlns="http://www.w3.org/2000/svg" width="25" height="15" viewBox="0 0 25 15" fill="none">
                                                <path d="M24.7071 8.07112C25.0976 7.6806 25.0976 7.04743 24.7071 6.65691L18.3431 0.292946C17.9526 -0.0975785 17.3195 -0.0975785 16.9289 0.292946C16.5384 0.68347 16.5384 1.31664 16.9289 1.70716L22.5858 7.36401L16.9289 13.0209C16.5384 13.4114 16.5384 14.0446 16.9289 14.4351C17.3195 14.8256 17.9526 14.8256 18.3431 14.4351L24.7071 8.07112ZM0 7.36401V8.36401H24V7.36401V6.36401H0V7.36401Z" fill="#fff"></path>
                                            </svg>
                                        </span>
                                    </a>
                                </div>
                            </div>
                        </div>