'use strict'


const swapColourClass = (elem, target) => {
  elem.closest(target).removeClass('lighten-1')
  elem.closest(target).addClass('darken-3')
}

const highlightFilterButton = () => {
  const searchURL  = window.location.search
  let $sortButtons = $('input.waves-button-input')

  $sortButtons.each((_, button) => {
    let filterText = button.value.split(' ').join('+')
    if (searchURL.includes(`=${filterText}`)) {
      swapColourClass($(button), 'i')
    }
  })
}

window.onload = () => {
  // fix inaction when clicking outside of button text for filters
  $('i.cause-search').on('click', function(e) {
    $(e.target).children('input').click()
  })

  highlightFilterButton()

}