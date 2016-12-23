'use strict'

const makeClosestElementActive = (elem, target) => {
  return elem.closest(target).addClass('active')
}
// leverage Materlialize to highligh active pages in Nav
const activeNavButtons = () => {
  let $navLinks = $('ul.right a')
  const url     = window.location.pathname

  $navLinks.each((_, button) => {
    let buttonText = new RegExp(button.innerHTML, 'i')

    if (url.match(buttonText)) {
      makeClosestElementActive($(button), 'li')
    }
  })
}

$(document).ready(() => {

  activeNavButtons()
  $(".button-collapse").sideNav();

})