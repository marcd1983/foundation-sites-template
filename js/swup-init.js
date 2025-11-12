(() => {
  // ---- Helpers -------------------------------------------------------------
  const INST = { swiper: new WeakMap() };
  const qsa = (root, sel) => Array.from((root || document).querySelectorAll(sel));

  // Guard so we don't init twice on the same element
  const once = (el, key = 'inited') => {
    const dkey = `swup_${key}`;
    if (el.dataset[dkey]) return false;
    el.dataset[dkey] = '1';
    return true;
  };

  // ---- Swiper init / destroy ----------------------------------------------
  function initSwipers(root) {
    qsa(root, '.swiper[data-swiper]').forEach(el => {
      if (!once(el, 'swiper')) return; // already initialised on this element

      let opts = {};
      try { opts = JSON.parse(el.getAttribute('data-swiper') || '{}'); } catch {}

      const next = el.querySelector('.swiper-button-next');
      const prev = el.querySelector('.swiper-button-prev');
      const pag  = el.querySelector('.swiper-pagination');
      const scr  = el.querySelector('.swiper-scrollbar');

      if (next && prev) opts.navigation = { nextEl: next, prevEl: prev };
      if (pag)          opts.pagination = { el: pag, clickable: true };
      if (scr)          opts.scrollbar  = { el: scr };

      // eslint-disable-next-line no-undef
      const instance = new Swiper(el, opts);
      INST.swiper.set(el, instance);
    });
  }

  function destroySwipers(root) {
    qsa(root, '.swiper[data-swiper]').forEach(el => {
      const inst = INST.swiper.get(el);
      if (inst && inst.destroy) {
        inst.destroy(true, true);
        INST.swiper.delete(el);
        // allow re-init on future visits
        delete el.dataset.swup_swiper;
      }
    });
  }

  // ---- Other per-page initialisers (add yours here) ------------------------
  function initMenus(root) {
    // Example: non-delegated bindings that live inside the container
    qsa(root, '[data-toggle]').forEach(btn => {
      if (!once(btn, 'toggle')) return;
      const sel = btn.getAttribute('data-toggle');
      btn.addEventListener('click', e => {
        e.preventDefault();
        (root.querySelector(sel) || document.querySelector(sel))?.classList.toggle('is-open');
      });
    });
  }


  function trackPageview() {
    // GA4 / Plausible examples; keep this quick
    if (window.gtag) {
      gtag('event', 'page_view', {
        page_location: location.href,
        page_title: document.title,
        page_path: location.pathname + location.search
      });
    }
    if (window.plausible) plausible('pageview', { u: location.href });
  }

  // ---- The unified init() / unload() ----------------------
  function init(root = document) {
    // Order: DOM upgrades → widgets → frameworks → analytics
    initSwipers(root);
    initMenus(root);
    trackPageview();
  }

  function unload(root = document) {
    // Destroy anything that attaches listeners/observers or holds references
    destroySwipers(root);
    // destroyOtherWidgets(root);
  }

  // ---- Swup lifecycle wiring ----------------------------------------------
  // Configure Swup (use your existing options)
 const swup = new Swup({
    containers: ['#swup'],
    animationSelector: '#swup',
    linkSelector: 'a[href^="/"]:not([href*="#"]):not([href^="/admin"]):not([data-no-swup])'
  });

  // Run once on initial load
  if (document.readyState === 'complete') {
    init(document);
  } else {
    document.addEventListener('DOMContentLoaded', () => init(document));
  }

  // Before Swup replaces content, tear down to avoid leaks
  swup.hooks.before('content:replace', () => {
    // Scope to current containers if you want:
    document.querySelectorAll(swup.options.containers.join(','))
      .forEach(container => unload(container));
  });

  // After new content is in the DOM, (re)init inside the fresh containers
  swup.hooks.on('page:view', (ctx) => {
    // ctx.page?.url; ctx.visit?.to; not required here but available
    document.querySelectorAll(swup.options.containers.join(','))
      .forEach(container => init(container));
  });

  // Optional: use the official scripts plugin ONLY if you must re-exec arbitrary
  // third-party <script> tags you don't control.
  // import SwupScriptsPlugin from '@swup/scripts-plugin';
  // swup.use(new SwupScriptsPlugin());
})();