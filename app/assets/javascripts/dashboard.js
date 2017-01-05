'use strict'

const hideOtherToggleForms = (exception) => {
  $('.toggle-hide').each((_, form) => {
    if (form !== exception) {
      form.style.display = 'none'
    }
  })
}

const toggleCardEditButtonVisibility = () => {
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

const showCardEditor = () => {
  $('i.edit-btn').on("click", function(e) {
    $('div.toggle-hide').hide()

    const cardId = $(this).closest('li').attr('id')
    const $parentLink = $(this).parent().attr('href')
    // scroll to just-below the nav
    window.scrollTo(0,70)
    toggleEditor($($parentLink))

    e.preventDefault()
  })
}

$(document).ready(() => {

  // init materialize select boxes in new need/offer forms
  $('select').material_select()

  // hide card edit buttons, handled with cardEditButton
  $('i.edit-btn').hide()

  // hide all need/offer and editor forms
  $('div.toggle-hide').hide()

  toggleCardEditButtonVisibility()
  showCardEditor()


  $( "#toggle-new-need-button" ).on('click', () => {
    toggleEditor($('#toggle-new-need'))
  })

  $( "#toggle-new-offer-button" ).on('click', () => {
    toggleEditor($('#toggle-new-offer'))
  })

  $( "#toggle-org-form-button" ).on('click', () => {
    toggleEditor($('#toggle-org-form'))
  })


})