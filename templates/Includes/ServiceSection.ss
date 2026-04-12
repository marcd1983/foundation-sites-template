<div class="service-section">
<div class="grid-container fluid">
<div class="grid-x grid-padding-x grid-padding-y">
<div class="cell large-6" data-aos="fade-up">
<h2 class="h1">Something About Services</h2>
<p class="lead">By three methods we may learn wisdom: First, by reflection, which is noblest; Second, by imitation, which is easiest; and third by experience, which is the bitterest.</p>
</div>
</div>
</div>
<div class="grid-container full">
<div class="grid-x grid-padding-x grid-padding-y">
    <div class="cell" data-aos="fade-up">
        <div class="swiper marquee-scroller marquee-top">
            <div class="swiper-wrapper">
                <% loop $HomeServicesAsc %>
                    <div class="swiper-slide">
                        <% include ServiceHoverCard %>
                    </div>
                <% end_loop %>
            </div>
        </div>
    </div>
    <div class="cell show-for-large" data-aos="fade-up">
        <div  class="swiper marquee-scroller marquee-bottom">
                <div class="swiper-wrapper">
                    <% loop $HomeServicesDesc %>
                        <div class="swiper-slide text-left">
                            <% include ServiceHoverCard %>
                        </div>
                    <% end_loop %>
                </div>
            </div>
        </div>
    </div>
</div>
</div>