/* ==================================================================
   Glue script for the Foundation-6 rebuild of the mega menu.
   All interactive behaviour (dropdown menu, mega-menu, off-canvas,
   tabs, dropdown panes) is provided by Foundation's own JS plugins.

   Foundation itself is initialised once, sitewide, in app.js -- NOT
   here. app.js has to run its own pre-processing (stripping the mobile
   accordion menu's starting .is-active class) immediately before that
   single $(document).foundation() call, so this file must not call it
   a second time: two calls double-initialise every Foundation plugin
   on the page, which is what caused the Tabs bug where clicking a
   different tab left the previous one's panel visible instead of
   replacing it (Tabs' internal state got attached twice, so the second
   init's click handler wasn't acting on the state the first init's
   markup reflected). This file only adds behaviour Foundation itself
   doesn't provide:
   - morphing the hamburger icon into an "x" when the off-canvas opens
   - rotating the search icon into an "x" when a search pane opens
   - closing the off-canvas menu when a nav link inside it is clicked

   Note on data-close-on-click-inside="false" (set on .mega-nav__menu in
   the HTML): Foundation's Dropdown Menu defaults that option to true,
   which closes the *entire* menu whenever a click bubbles through any
   leaf <li> in its tree -- including the single <li> that wraps a whole
   mega-menu panel's free-form content (tabs, images, buttons). That
   made clicking a product tab, or Learn More/Buy, collapse the whole
   nav instead of just switching tabs. Turning it off there restores the
   original behaviour: a mega-menu panel only closes via Escape, a click
   outside the nav, or opening a different top-level item.
   ================================================================== */
(function ($) {
  var $offCanvas = $('#off-canvas');
  var $hamburgers = $('[data-toggle="off-canvas"]');

  $offCanvas
    .on('opened.zf.offCanvas', function () {
      $hamburgers.addClass('mega-nav__icon-btn--state-b').attr('aria-expanded', 'true');
    })
    .on('closed.zf.offCanvas', function () {
      $hamburgers.removeClass('mega-nav__icon-btn--state-b').removeAttr('aria-expanded');
    });

  // close the off-canvas menu automatically once a real link is followed.
  // Matched by suffix (not exact value) because SilverStripe's SSViewer
  // rewrites "#0" placeholder hrefs into "<current-page-url>#0" to keep
  // in-page anchors working alongside the <base href> tag it emits --
  // an exact-match selector would miss that and treat every placeholder
  // click as a real navigation, closing the panel out from under
  // Accordion Menu's own toggle handling.
  //
  // A top-level item with children (e.g. "Our Company") now carries a
  // real href instead of "#0", since the mobile menu is SiteTree-driven.
  // Accordion Menu calls preventDefault() on that click and toggles the
  // submenu instead of navigating, but preventDefault() doesn't stop the
  // click bubbling up to this handler -- so without the check below, a
  // real href on a toggle-parent link still closed the whole panel
  // instead of letting it expand. Foundation marks any <li> with a
  // nested submenu "is-accordion-submenu-parent" at init, so skip the
  // close whenever the clicked link's own <li> is one of those; only a
  // genuine leaf link (no submenu) should close the panel.
  $offCanvas.on('click', 'a[href]:not([href$="#0"])', function () {
    if ($(this).parent('li').hasClass('is-accordion-submenu-parent')) return;
    $offCanvas.foundation('close');
  });

  $('.mega-nav__search-pane').each(function () {
    var $pane = $(this);
    var $trigger = $('[data-toggle="' + $pane.attr('id') + '"]');
    $pane
      .on('show.zf.dropdown', function () { $trigger.addClass('mega-nav__icon-btn--state-b'); })
      .on('hide.zf.dropdown', function () { $trigger.removeClass('mega-nav__icon-btn--state-b'); });
  });
})(jQuery);
