'use strict'

$(document).ready(() => {

  const $orgform = $('#organization-form')
  $orgform.hide()

  const $checkboxes = $('input:checkbox')

  $checkboxes.on('click', function() {
    $checkboxes.prop('checked', false).attr('checked', false)
    $(this).prop('checked', true).attr('checked', true)

    if (this === $('#person')[0]) $orgform.hide()
    else $orgform.show()
  })

})