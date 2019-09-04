window.$ = require('jquery')

$(document).ready(function () {
  $('.menu-toggle').click(function () {
    $('nav').toggleClass('active')
  })
})
