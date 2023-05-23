$(document).ready(function(){
    $('.owl-carousel-slider').owlCarousel({
        loop: true,
        margin: 10,
        autoplay: true,
        navigator: true,
        navigationText: ["◀ Left <strong>arrow</strong>","Right <strong>arrow</strong> ▶"],
        lazyLoad:true,
        autoplayTimeout: 2500,
        items: 1,
    })
    $('.owl-carousel-product').owlCarousel({
        loop: true,
        margin: 10,
        autoplay: true,
        navigation: true,
        autoplayTimeout: 2500,
        responsive: {
            0: {
                items: 2
            },
            600: {
                items: 3
            },
            1000: {
                items: 5
            }
        }
    })
})
