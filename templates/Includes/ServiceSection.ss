<div class="service-section">
<div class="grid-container fluid">
<div class="grid-x grid-padding-x grid-padding-y">
<div class="cell">
<h2>Something About Services</h2>
<p>something about our services again</p>
</div>
</div>
</div>
<div class="grid-container full">
<div class="grid-x grid-padding-x grid-padding-y">
<div class="cell">
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
<div class="cell show-for-large">
<div class="swiper marquee-scroller marquee-bottom">
        <div class="swiper-wrapper">
            <% loop $HomeServicesDesc %>
                <div class="swiper-slide">
                    <% include ServiceHoverCard %>
                </div>
            <% end_loop %>
        </div>
    </div>
</div>
</div>
</div>
</div>