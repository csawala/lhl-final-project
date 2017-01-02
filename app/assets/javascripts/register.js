'use strict'


$(document).ready(() => {

  const $checkboxes = $('input:checkbox')

  $checkboxes.on('click', function() {
    $checkboxes.prop('checked', false).attr('checked', false)
    $(this).prop('checked', true).attr('checked', true)

    console.log(this)
  })

})