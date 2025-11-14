/*global $ */
$(document).ready(function () {   
    $('.mega-menu > ul > li > ul:not(:has(ul))').addClass('normal-sub');
    $(".mega-menu > ul > li").hover(
        function (e) {
            if ($(window).width() > 1024) {
                $(this).children("ul").fadeIn(150);
                e.preventDefault();
            }
        }, 
        function (e) {
            if ($(window).width() > 1024) {
                $(this).children("ul").fadeOut(150);
                e.preventDefault();
            }
        }
    );
});