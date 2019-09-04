import 'fontawesome-4.7/css/font-awesome.min.css'
import '../css/animate.css'
import '../css/raleway.css'
import '../css/language-switcher.css'

window.$ = require('jquery')

$(document).ready(function () {
  $('.menu-toggle').click(function () {
    $('nav').toggleClass('active')
  })
})
