makeClosestElementActive = (elem, target) => {
  return elem.closest(target).addClass('active')
}
// leverage Materlialize to highligh active pages in Nav
activeNavButtons = () => {
  const $window = window.location.pathname
  if ($window.includes('/organizations'))
    makeClosestElementActive($('#org-btn'), 'li')
  else if ($window.includes('/do_good'))
    makeClosestElementActive($('#do-good-btn'), 'li')
  else if ($window.includes('/dashboard'))
    makeClosestElementActive($('#dashboard-btn'), 'li')
}

$(document).on('turbolinks:load', () => {
  activeNavButtons()
  $(".button-collapse").sideNav();
})