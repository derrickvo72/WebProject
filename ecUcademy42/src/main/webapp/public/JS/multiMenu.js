// $(document).ready(function (){
//     $(".menu li").hover(function (){
//         $(this).find("ul:first").slideDown(500);
//     },function (){
//         $(this).find("ul:first").hide(300);
//     });
// });

// $('.btn-show').click(function (){
//     $(this).toggleClass("click");
//     $('.sidebar').toggleClass("show");
//     $('.block-main').toggleClass("show");
// });
// $('.block-main').click(function (){
//     $(this).toggleClass("click2");
//     $('.sidebar').toggleClass("clear");
//     $('.btn-show').toggleClass("hiddenbut");
// });
$(function () {
    'use strict'

    $("[data-trigger]").on("click", function(){
        var trigger_id =  $(this).attr('data-trigger');
        $(trigger_id).toggleClass("show");
        $('body').toggleClass("offcanvas-active");
    });

    // close if press ESC button
    $(document).on('keydown', function(event) {
        if(event.keyCode === 27) {
            $(".navbar-collapse").removeClass("show");
            $("body").removeClass("overlay-active");
        }
    });

    // close button
    $(".btn-close").click(function(e){
        $(".navbar-collapse").removeClass("show");
        $("body").removeClass("offcanvas-active");
    });


})

// $('.Web-btn').click(function (){
// $('.navy ul .Web-show').toggleClass("show");
//     $('.navy ul .first').toggleClass("rotate");
// });
//
// $('.Design-btn').click(function (){
//     $('.navy ul .Design-show').toggleClass("show1");
//     $('.navy ul .second').toggleClass("rotate");
// });

$('.navy ul li').click(function (){
    $(this).addClass("active").siblings().removeClass("active");
});

