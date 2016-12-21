//
// for carousel form
//
$(document).ready(() => {


      $('.carousel.carousel-slider').carousel({full_width: true});

      $('select').material_select();

      $('#offer-button').click(function(q) {
        $('.carousel').carousel('next')
      })

      $('#individual-button').click(function(q) {
        $('.carousel').carousel('next')
      })

      $('#give-button-individual').click(function(q) {
        $('.carousel').carousel('next')
      })

      $('#participate-button-individual').click(function(q) {
        $('.carousel').carousel('next', 2)
      })

      $('#organization-button').click(function(){
          window.location.href='/dashboard/1';
      })

     $('#causes_form').on('submit', function(e) {
           e.preventDefault();
           var causes = $('#multiple_select_carousel').serialize();
           window.location = '/organizations?' + causes
       });

})
