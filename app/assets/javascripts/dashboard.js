'use strict'

const hideOtherToggleForms = (exception) => {
  $('.toggle-hide').each((_, form) => {
    if (form !== exception) {
      form.style.display = 'none'
    }
  })
}


const orgEditToggle = () => {
  $( "#toggle-org-form-button" ).click(() => {
    let $target = $('#toggle-org-form')

    hideOtherToggleForms($orgForm[0])

    $target.slideToggle("medium")
  })
}

const newNeedToggle = () => {
  $( "#toggle-new-need-button" ).click(() => {
    let $target = $('#toggle-new-need')

    hideOtherToggleForms($target[0])

    $target.slideToggle("medium")
  })
}

const newOfferToggle = () => {
  $( "#toggle-new-offer-button" ).click(() => {
    let $target = $('#toggle-new-offer')

    hideOtherToggleForms($target[0])

    $target.slideToggle("medium")
  })
}

$(document).ready(() => {

  orgEditToggle()
  newNeedToggle()
  newOfferToggle()

})