'use strict'

const orgEditToggle = () => {
  $( "#toggle-org-form-button" ).click(() => {
    // $('.visible').removeClass('visible').hide()

    $( "#toggle-org-form" ).slideToggle("medium").addClass('visible')
  })
}

const newNeedToggle = () => {
  $( "#toggle-new-need-button" ).click(() => {
    // $('.visible').removeClass('visible').hide()

    $( "#toggle-new-need" ).slideToggle("medium").addClass('visible')
  })
}

const newOfferToggle = () => {
  $( "#toggle-new-offer-button" ).click(function() {
    // $('.visible').removeClass('visible').hide()

    $( "#toggle-new-offer" ).slideToggle("medium").addClass('visible')
  })
}

$(document).ready(() => {

  orgEditToggle()
  newNeedToggle()
  newOfferToggle()

})