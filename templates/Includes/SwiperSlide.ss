<div class="swiper-slide swiper-{$Theme}" style="--slide-h: {$DesktopHeight}px; --slide-h-m: {$MobileHeight}px;">
        <% if $CoverLink %>
          <a class="cover-link" href="$CoverLink.URL" aria-label="$CoverLink.Title.XML"></a>
        <% end_if %>

        <% if $IsVideo %>
          <!-- VIDEO -->
          <div class="swiper-media">
            <video
              class="swiper-video"
              autoplay
              muted
              playsinline
              loop
              preload="auto"
              <% if $PosterURL %>poster="$PosterURL"<% end_if %>
              <% if $VideoStart %>data-start="$VideoStart"<% end_if %>
              <% if $VideoEnd %>data-end="$VideoEnd"<% end_if %>
            >
              <% if $VideoWebM %><source src="$VideoWebM.URL" type="video/webm"><% end_if %>
              <% if $VideoMP4 %><source src="$VideoMP4.URL" type="video/mp4"><% end_if %>
              Your browser does not support HTML5 video.
            </video>
          </div>
        <% else %>
          <!-- IMAGE (lazy/eager as before) -->
          <% if $Image %>
            <% if $Lazy %>
              <!-- LAZY -->
              <picture>
                <source media="(max-width: 639px)" data-srcset="$MobileImageURL">
                <img
                  class="swiper-lazy"
                  data-src="$DesktopImageURL"
                  alt="$Image.Title.ATT"
                  width="$DesktopWidth" height="$DesktopHeight"
                  style="width:100%;height:100%;object-fit:cover;object-position:center;">
              </picture>
              <div class="swiper-lazy-preloader"></div>
            <% else %>
              <!-- EAGER -->
              <picture>
                <source media="(max-width: 639px)" srcset="$MobileImageURL">
                <img
                  src="$DesktopImageURL"
                  alt="$Image.Title.ATT"
                  width="$DesktopWidth" height="$DesktopHeight"
                  style="width:100%;height:100%;object-fit:cover;object-position:center;">
              </picture>
            <% end_if %>
          <% end_if %>
        <% end_if %>

        <% if $OverlayOpacity %>
          <div class="swiper-overlay" style="--overlay: {$OverlayOpacityCss};"></div>
        <% else %>
          <div class="swiper-overlay"></div>
        <% end_if %>

        <% if $Headline || $Description || $Content || $Links.Exists %>
        <div class="slide-content">
          <div class="grid-container fluid" style="width: 100%;">
            <div class="grid-x align-middle <% if $Align == 'center' %>align-center<% else_if $Align == 'right' %>align-right<% else %>align-left<% end_if %>">
              <div class="cell large-<% if $Align == 'center' %>12<% else %>6<% end_if %> small-12">
                <div class="<% if $ContentBg %>glass p-60<% end_if %>">
                    <% if $Headline %><h1>$Headline</h1><% end_if %>
                    <% if $Description %><p>$Description</p><% end_if %>
                    $Content
                    <% if $Links.Exists %>
                    <div class="button-group gap-6 large <% if $Align == 'center' %>align-center<% else_if $Align == 'right' %>align-right<% else %>align-left<% end_if %>">
                        <% loop $Links %>
                        
                        <a class="button $CssClass"<% if $ModalTarget %> data-remodal-target="$ModalTarget"<% else %> href="$URL"<% end_if %><% if $OpenInNew %> target="_blank" rel="noopener noreferrer"<% end_if %>>$Title.XML</a>
                        <% end_loop %>
                    </div>
                    <% end_if %>
                </div>
              </div>
            </div>
          </div>
        </div>
        <% end_if %>
      </div>
