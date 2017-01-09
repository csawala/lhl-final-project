'use strict'

const makeClosestElementActive = (elem, target) => {
  elem.closest(target).addClass('active')
}
// leverage Materlialize to highlight active pages in Nav
const activeNavButtons = () => {
  let $navLinks = $('ul.right a')
  const url     = window.location.pathname

  $navLinks.each((_, button) => {
    let buttonText = new RegExp(button.innerHTML, 'i')

    if (url !== '/login' && url.match(buttonText)) {
      makeClosestElementActive($(button), 'li')
    }
  })
}

$(document).ready(() => {

  activeNavButtons()
  $(".button-collapse").sideNav();

})