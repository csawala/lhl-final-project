// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
'use strict'


const orgEditToggle = () => {
  $( "#toggle-org-form" ).click(() => {
    $( "#toggle-org-form-render" ).slideToggle("slow")
  })
}

const newNeedToggle = () => {
  $( "#toggle-new-need-button" ).click(() => {
    $( "#toggle-new-need" ).slideToggle("slow")
  })
}

const newOfferToggle = () => {
  $( "#toggle-new-offer-button" ).click(() => {
    $( "#toggle-new-offer" ).slideToggle("slow")
  })
}



$(document).ready(() => {
  orgEditToggle()
  newNeedToggle()
  newOfferToggle()
})