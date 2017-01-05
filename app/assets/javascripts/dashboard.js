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

    hideOtherToggleForms($target[0])

    $target.slideToggle("medium")
  })
}

const newNeedToggle = () => {
  $( "#toggle-new-need-button" ).click(() => {
    let $target = $('#toggle-new-need')

    hideOtherToggleForms($target[0])

    $target.slideToggle("fast")
  })
}

const newOfferToggle = () => {
  $( "#toggle-new-offer-button" ).click(() => {
    let $target = $('#toggle-new-offer')

    hideOtherToggleForms($target[0])

    $target.slideToggle("fast")
  })
}

const cardEditButton = () => {
  $('li.card').on('mouseover', function() {
    $(this).find('i.edit-btn').show()
    $(this).on('mouseleave', function() {
      // console.log($(this))
      $(this).find('i.edit-btn').hide()
    })
  })
}

const cardEditToggle = () => {
  $('div i.edit-btn').on("click", function() {
    const cardId = $(this).closest('li').attr('id')
    console.log(cardId)
  })
}

$(document).ready(() => {

  $('i.edit-btn').hide()
  cardEditButton()
  $('select').material_select()
  orgEditToggle()
  newNeedToggle()
  newOfferToggle()
  cardEditToggle()

})