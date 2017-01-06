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
  const editPath = window.location.pathname.match(/\/dashboard.+\d/)

  if (editPath) toggleEditor($('#toggle-edit-card'))
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