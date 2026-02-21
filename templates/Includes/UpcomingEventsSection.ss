<% if $Events %>
<div class="events-section p-y-80">
    <div class="grid-container full">
        <div class="grid-x">
            <div class="cell large-auto medium-12 small-order-2 medium-order-1">
               <div class="swiper" id="carousel-events">
                <div class="swiper-wrapper">
                    <% loop $Events %>
                    <div class="swiper-slide">
                        <% include UpcomingEventCard %>
                    </div>
                    <% end_loop %>
                </div>
                <button class="swiper-button-next" aria-label="Next slide"></button>
            </div>
            </div>
            <div class="cell large-shrink medium-12 align-self-middle small-order-1 medium-order-2">
                <div class="p-60">
                    <h2><span class="stat">View All</span><br>Upcoming Events</h2>
                    <a href="/upcoming-events" class="button-arrow large" style="padding:20px 0;">
                        <span>
                            View All Events
                        </span>
                        <span>
                            <svg xmlns="http://www.w3.org/2000/svg" width="25" height="15" viewBox="0 0 25 15" fill="none">
                                <path d="M24.7071 8.07112C25.0976 7.6806 25.0976 7.04743 24.7071 6.65691L18.3431 0.292946C17.9526 -0.0975785 17.3195 -0.0975785 16.9289 0.292946C16.5384 0.68347 16.5384 1.31664 16.9289 1.70716L22.5858 7.36401L16.9289 13.0209C16.5384 13.4114 16.5384 14.0446 16.9289 14.4351C17.3195 14.8256 17.9526 14.8256 18.3431 14.4351L24.7071 8.07112ZM0 7.36401V8.36401H24V7.36401V6.36401H0V7.36401Z" fill="#111111"></path>
                            </svg>
                        </span>
                    </a>
                </div>
            </div>
        </div>
    </div>
</div>
<% end_if %>
