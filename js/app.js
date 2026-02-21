// Kick Foundation once on first load
$(document).foundation();

new Swiper('#carousel-events', {
    // centeredSlides: true,
    loop: true,
    loopAddBlankSlides: true,
    autoplay: {
        delay: 3000,
    },
    spaceBetween: 20,
    navigation: {
      nextEl: '#carousel-events .swiper-button-next',
    },
    breakpoints: {
      0:    { slidesPerView: 1}, // mobile
      768:  { slidesPerView: 2}, // laptop/tablet
      1024: { slidesPerView: 3}, // desktop
    }
  });

  