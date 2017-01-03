
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

    // on click participate-button-individual directed to slide 5
    $('#participate-button-individual').click(function(q) {
      $('.carousel').carousel('next', 2)
    })

    // on click organization-button directed to slide 6
    $('#organization-button').click(function(q) {
      $('.carousel').carousel('next', 4)
    })

    // on click register-button-organizations redirected to register page
    $('#register-button-organizations').click(function(){
        window.location.href='/register'
    })

    // on click show-me-button-organizations redirected to needs pasge
    $('#show-me-button-organizations').click(function(){
        window.location.href='/needs'
    })

    // on click register-button-charities redirected to register page
    $('#register-button-charities').click(function(){
        window.location.href='/register'
    })

    // on click show-me-button-charities redirected to offers pasge
    $('#show-me-button-charities').click(function(){
        window.location.href='/offers'
    })

    // on click need-button directed to slide 7
    $('#need-button').click(function(q) {
      $('.carousel').carousel('next', 6)
    })

    // turns query from slide 4 into string -> filters orgs by causes selected
    $('#causes_form').on('submit', function(e) {
      e.preventDefault();
      var causes = $('#multiple_select_causes_carousel').serialize();
        window.location = '/organizations?' + causes
    });

    // turns query from slide 5 into string -> filters needs by ways to participate selected
    $('#participation_form').on('submit', function(e) {
      e.preventDefault();
      var waysToParticipate = $('#multiple_select_participation_carousel').serialize();
        window.location = '/needs?' + waysToParticipate
    });

  })
