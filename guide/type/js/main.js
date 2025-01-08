// $(document).ready(function(){
//     var innerW = $(window).width();
    
//     if (innerW > 1280) {  // 다바이스 크기가 1280이상일때 

//         $(".mView_list .btn_view a").click(function(){
//             if($(this).hasClass("on")){
//                 $(this).removeClass("on");
//                 $(this).parent().parent().find("ul").css("height","330px");
//             }else{
//                 $(this).addClass("on");
//                 $(this).parent().parent().find("ul").css("height","100%");
//             }
//             return false;
//         });

//     } else {

//         $(".mView_list .btn_view a").click(function(){
//             if($(this).hasClass("on")){
//                 $(this).removeClass("on");
//                 $(this).parent().parent().find("ul").css("height","270px");
//             }else{
//                 $(this).addClass("on");
//                 $(this).parent().parent().find("ul").css("height","100%");
//             }
//             return false;
//         }); 

//     }
// });


$(function(){
    main.init();

    gsap.registerPlugin(ScrollTrigger);

    gsap.from(".typeMain", {
        scrollTrigger: {
            trigger: ".firstAni",
            start: "top bottom",
            once: true,
            end: "bottom 0",
            toggleClass: "ani",
        },
    });

    gsap.from(".typeMain", {
        scrollTrigger: {
            trigger: ".mQuick_wrap",
            start: "top bottom",
            once: true,
            end: "bottom 0",
            toggleClass: "ani",
        },
    });

    gsap.from(".typeMain", {
        scrollTrigger: {
            trigger: ".mView",
            start: "top bottom",
            once: true,
            end: "bottom 0",
            toggleClass: "ani",
        },
    });

    gsap.from(".typeMain", {
        scrollTrigger: {
            trigger: ".minH",
            start: "top bottom", //240625 수정
            once: true,
            end: "bottom 0",
            toggleClass: "ani",
        },
    });

    gsap.from(".typeMain", {
        scrollTrigger: {
            trigger: ".mBanner",
            start: "top bottom", //240625 수정
            once: true,
            end: "bottom 0",
            toggleClass: "ani",
        },
    });

});

var main = {
    init: function () {
        main.mQuick();
        // main.mService();
        main.mScrollTab();

        // $('.mSection').each(function(){
        //     $(this).removeClass('ani')
        // })

        // 240828 메인화면 90% 보이게 수정
        //document.body.style.zoom = "90%";
    },

    mQuick : function(){
        var mQuick = undefined;
        ww2 = $(window).width();

        initTabSwiper2();

        $(window).on('resize', function () {
            ww2 = $(window).width();
            initTabSwiper2();
        });

        function initTabSwiper2() {
            if (ww2 <= 583 && mQuick == undefined) {
                var swiperOption = {
                    slidesPerView: 3,
                    observer : true,
                    observeParents : true,
                    pagination: {
                        el: ".mQuick_wrap  .swiper-pagination",
                        clickable: true
                    },
                }
                mQuick = new Swiper('.mQuick', swiperOption);
            } else if (ww2 >= 583 && mQuick != undefined) {
                mQuick.destroy();
                mQuick = undefined;
            }
        }
    },

    mService : function(){
        var mService = undefined;
        
        $(window).on('load resize', function () {
            ww = $(window).width();
            initTabSwiper();
        });

        function initTabSwiper() {
            if ($(window).width() <= 583 && mService == undefined) {
                var swiperOption = {
                    slidesPerView: 'auto',
                    freeMode : false
                    
                }
                mService = new Swiper('.mService .swiper-container', swiperOption);
            } else if ($(window).width() >= 583 && mService != undefined) {
                mService.destroy();
                mService = undefined;
            }
        }
    },

    mScrollTab : function(){
        var mScrollTab = undefined;
        
        $(window).on('load resize', function () {
            ww = $(window).width();
            initTabSwiper();
        });

        function initTabSwiper() {
            if ($(window).width() <= 583 && mScrollTab == undefined) {
                var swiperOption = {
                    slidesPerView: 'auto',
                    freeMode : false
                    
                }
                mScrollTab = new Swiper('.mBoard_tab', swiperOption);
            } else if ($(window).width() >= 583 && mScrollTab != undefined) {
                mScrollTab.destroy();
                mScrollTab = undefined;
            }
        }
    },
    

}

