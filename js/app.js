// ElementMenu accordion orientation: expanded by default on desktop,
// collapsed by default on mobile. The nested menu ships with `.is-active`
// (open) in the template; strip it below the `large` breakpoint BEFORE
// Foundation initialises so AccordionMenu picks up the right start state.
// Click-to-toggle then works normally at every width.
(function () {
  if (window.matchMedia('(min-width: 1024px)').matches) return;

  document
    .querySelectorAll('.accordion-menu[data-accordion-menu] .nested.is-active')
    .forEach(function (submenu) {
      submenu.classList.remove('is-active');
    });
})();

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