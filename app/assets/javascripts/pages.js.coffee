# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$(document).ready ->
  $('#fullpage').fullpage
    menu: false
    verticalCentered: true
    resize: false
    anchors: [
      'firstPage'
      'secondPage'
      'thirdPage'
      'fourthPage'
      'fifthPage'
      'sixthSlide'
    ]
    navigation: false
    navigationPosition: 'right'
    navigationTooltips: [
      'firstSlide'
      'secondSlide'
      'thirdSlide'
      'fourthSlide'
      'fifthSlide'
      'sixthSlide'
    ]
    css3: true

