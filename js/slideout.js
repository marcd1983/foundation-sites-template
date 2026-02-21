// SlideOutMenu.ss
    const slideButtons = $(".slide-out-btn");
    const menuBgOverlay = $(".menu-bg-overlay");

    function openSlideOut(slideOutId) {
        const slideOutElement = $("#" + slideOutId);
        slideOutElement.css("right", "0");
        menuBgOverlay.show();
    }

    function closeSlideOut(slideOutId) {
        const slideOutElement = $("#" + slideOutId);
        slideOutElement.css("right", "-100%"); // Slide it back off-screen
        menuBgOverlay.hide();
    }

    // Event listeners for button clicks
    slideButtons.each(function () {
        const targetId = $(this).attr("id").replace("slideMenu", "SlideOut");
        $(this).on("click", function () {
            openSlideOut(targetId);
        });
    });

    // Close button click event
    $(".menu-close-btn").each(function () {
        $(this).on("click", function () {
            slideButtons.each(function () {
                const targetId = $(this).attr("id").replace("slideMenu", "SlideOut");
                closeSlideOut(targetId);
            });
        });
    });

    // Close slide-out when clicking on the overlay
    menuBgOverlay.on("click", function () {
        slideButtons.each(function () {
            const targetId = $(this).attr("id").replace("slideMenu", "SlideOut");
            closeSlideOut(targetId);
        });
    });