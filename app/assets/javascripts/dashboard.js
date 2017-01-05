'use strict'

const hideOtherToggleForms = (exception) => {
  $('.toggle-hide').each((_, form) => {
    if (form !== exception) {
      form.style.display = 'none'
    }
  })
}

const cardEditButton = () => {
  $('li.card').on('mouseover', function() {
    $(this).find('i.edit-btn').show()

    $(this).on('mouseleave', function() {
      $(this).find('i.edit-btn').hide()
    })
  })
}

const toggleEditor = (target) => {
  hideOtherToggleForms(target[0])

  target.slideToggle("medium")
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

  $( "#toggle-new-need-button" ).on('click', () => {
    toggleEditor($('#toggle-new-need'))
  })

  $( "#toggle-new-offer-button" ).on('click', () => {
    toggleEditor($('#toggle-new-offer'))
  })

  $( "#toggle-org-form-button" ).on('click', () => {
    toggleEditor($('#toggle-org-form'))
  })

  cardEditToggle()

})