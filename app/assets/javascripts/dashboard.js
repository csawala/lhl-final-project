// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
'use strict'


const setupOrgEditToggle = function(){
  $( "#toggle-org-form" ).click(function() {
    $( "#toggle-org-form-render" ).slideToggle( "slow", function() {
      // Organization Edit Form Animation Complete
    })
  })
}


$(document).ready(() => {
  setupOrgEditToggle()
})