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

const toggleActiveCheckbox = (target) => {
  if (target.is(':checked')) {
    return target.removeAttr('checked')
  }
  target.prop('checked', 'checked')
}

const toggleEditor = (target) => {
  hideOtherToggleForms(target[0])
  target.slideToggle("medium")
}

const toggleEditorWithRedirect = (target, url) => {
  toggleEditor(target)

  setTimeout(() => {
    window.location.replace(url)
  }, 150)
}

const showCardEditor = () => {
  const editPath = window.location.pathname.match(/\/dashboard.+\d/)

  if (editPath) toggleEditor($('#toggle-edit-card'))
}


$(document).ready(() => {

  // init materialize select boxes in new need/offer forms
  $('select').material_select()

  // hide all card edit buttons, handled by toggleCardEditButtonVisibility
  $('i.edit-btn').hide()

  // hide all need/offer and editor forms
  $('div.toggle-hide').hide()

  // handle checkbox to toggle active state in card editor
  $('label.toggle-active').on('click', function(e) {
    toggleActiveCheckbox($(this).siblings('input'))
  })
  // handle checkbox for urgent toggle
  $('label.toggle-urgent').on('click', function(e) {
    toggleActiveCheckbox($(this).siblings('input'))
  })

  toggleCardEditButtonVisibility()
  showCardEditor()

  // --- Form button handlers ---
  $( "#toggle-new-need-button" ).on('click', () => {
    toggleEditor($('#toggle-new-need'))
    $('label.toggle-urgent').show()
  })

  $( "#toggle-new-offer-button" ).on('click', () => {
    toggleEditor($('#toggle-new-offer'))
    $('label.toggle-urgent').hide()
  })

  $( "#toggle-org-form-button" ).on('click', () => {
    toggleEditor($('#toggle-org-form'))
  })

  $('a#cancel-btn').on('click', (e) => {
    e.preventDefault()
    toggleEditorWithRedirect($('#toggle-edit-card'), '/dashboard')
  })

})