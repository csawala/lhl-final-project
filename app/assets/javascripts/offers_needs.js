'use strict'


const swapColourClass = (elem, target) => {
  elem.closest(target).removeClass('lighten-1')
  elem.closest(target).addClass('darken-3')
}

const highlightFilterButton = () => {
  const searchURL  = window.location.search
  let $sortButtons = $('input.waves-button-input')

  $sortButtons.each((_, button) => {
    // console.log(button)
    let filterText = button.value.split(' ').join('+')
    console.log(filterText)
    if (searchURL.includes(`=${filterText}`)) {
      swapColourClass($(button), 'i')
    }
  })
}

window.onload = () => {

  highlightFilterButton()

}