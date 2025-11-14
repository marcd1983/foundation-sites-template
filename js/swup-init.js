// swup (once)
const swup = new Swup({
  containers: ['#swup'],
  animationSelector: '#swup',
  linkSelector: 'a[href^="/"]:not([href*="#"]):not([href^="/admin"]):not([data-no-swup])'
});

// ---- Swiper + swup lifecycle ----
(() => {
  const INST = new Map(); // el -> Swiper instance

  function parseOptions(el) {
    let raw = el.getAttribute('data-swiper') || '{}';
    raw = raw.replace(/&quot;/g, '"').replace(/&#34;/g, '"').replace(/&amp;/g, '&');
    let o = {};
    try { o = JSON.parse(raw.trim()); } catch {}
    const next = el.querySelector('.swiper-button-next');
    const prev = el.querySelector('.swiper-button-prev');
    const pag  = el.querySelector('.swiper-pagination');
    const sc   = el.querySelector('.swiper-scrollbar');
    if (next && prev) o.navigation = { nextEl: next, prevEl: prev }; else delete o.navigation;
    if (pag)          o.pagination = { el: pag, clickable: true };  else delete o.pagination;
    if (sc)           o.scrollbar  = { el: sc, hide: false };       else delete o.scrollbar;
    return o;
  }

  function init(root) {
    if (!window.Swiper) return;
    const scope = root || document;
    scope.querySelectorAll('.swiper[data-swiper]:not([data-swiper-initialized])')
      .forEach(el => {
        const s = new Swiper(el, parseOptions(el));
        el.setAttribute('data-swiper-initialized', '1');
        INST.set(el, s);
      });
    requestAnimationFrame(() => INST.forEach(i => { try { i.update(); } catch {} }));
  }

  function destroy() {
    INST.forEach((s, el) => {
      try { s.destroy(true, true); } catch {}
      el.removeAttribute('data-swiper-initialized');
    });
    INST.clear();
  }

  // Initial load
  if (document.readyState === 'loading') {
    document.addEventListener('DOMContentLoaded', () => init(document), { once: true });
  } else {
    init(document);
  }

  // Prevent jump-to-top on accordion headers even if binding is late
  document.addEventListener('click', function (e) {
    const a = e.target.closest('.accordion a[href="#"], .accordion a[href="/#"]');
    if (a) e.preventDefault();
  }, true);

  // swup lifecycle
  swup.hooks.on('visit:start', destroy);
  swup.hooks.on('page:view', () => {
    const container = document.getElementById('swup') || document;

    // Re-init carousels inside the swapped area
    init(container);

    // Re-init Foundation bindings on the swapped area (correct API use)
    if (window.Foundation) {
      const $scope = $(container);

      if (typeof Foundation.reflow === 'function') {
        // Preferred in newer Foundation Sites
        ['accordion', 'tabs', 'dropdown', 'reveal'].forEach(p => Foundation.reflow($scope, p));
      } else if (typeof Foundation.reInit === 'function') {
        // Older API: pass plugin names, not elements
        Foundation.reInit(['accordion', 'tabs', 'dropdown', 'reveal']);
      } else {
        // Fallback: initialize everything under the container
        $scope.foundation();
      }
    }
  });
})();
