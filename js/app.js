$(document).foundation();

const marqueeTop = new Swiper('.marquee-top', {
  slidesPerView: 'auto',
  spaceBetween: 12,
  loop: true,
  allowTouchMove: false,
  speed: 8000,
  autoplay: {
    delay: 0,
    disableOnInteraction: false,
    pauseOnMouseEnter: false,
  },
});

const marqueeBottom = new Swiper('.marquee-bottom', {
  slidesPerView: 'auto',
  spaceBetween: 12,
  loop: true,
  allowTouchMove: false,
  speed: 9000,
  autoplay: {
    delay: 0,
    disableOnInteraction: false,
    pauseOnMouseEnter: false,
  },
});