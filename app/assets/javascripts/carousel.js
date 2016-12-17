//
// for carousel form
//

$(document).ready(() => {

  $('.carousel.carousel-slider').carousel({full_width: true});

  $('#offer-button').click(function(q) {
    $('.carousel').carousel('next')
  })

  $('#give-button').click(function(q) {
    $('.carousel').carousel('next')
  })

})
