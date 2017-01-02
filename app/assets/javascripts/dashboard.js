'use strict'

const orgEditToggle = () => {
  $( "#toggle-org-form-button" ).click(() => {
    // $('.visible').removeClass('visible').hide()

    $( "#toggle-org-form" ).slideToggle("medium").toggleClass('visible')
  })
}

const newNeedToggle = () => {
  $( "#toggle-new-need-button" ).click(() => {
    // $('.visible').removeClass('visible').hide()

    $( "#toggle-new-need" ).slideToggle("medium").toggleClass('visible')
  })
}

const newOfferToggle = () => {
  $( "#toggle-new-offer-button" ).click(function() {
    // $('.visible').removeClass('visible').hide()

    $( "#toggle-new-offer" ).slideToggle("medium").toggleClass('visible')
  })
}

$(document).ready(() => {

  orgEditToggle()
  newNeedToggle()
  newOfferToggle()

})