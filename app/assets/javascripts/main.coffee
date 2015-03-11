# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/


$(document).ready ->
  $closeButton = $('.close-primary-menu-button')
  $openButton = $('.open-primary-menu-button')

  $closeButton.click ->
    $wrapper = $(this).closest('.grid-frame')
    $wrapper.addClass('primary-closed')
  $openButton.click ->
    $wrapper = $(this).closest('.grid-frame')
    $wrapper.removeClass('primary-closed')


  $('.items-menu a').click ->
    $wrap = $(this).closest('.items-menu')
    $menu = $wrap.find('.menu-wrap')
    if $menu.hasClass('close-menu')
      $menu.removeClass('close-menu')
    else
      $menu.addClass('close-menu')

  $('select.view-mode').change ->
    $wrapper = $(this).closest('.grid-frame')
    if $(this).val() == 'minimize'
      $wrapper.addClass('ordered-list-closed')
    else if $(this).val() == 'fullscreen'
      $wrapper.removeClass('ordered-list-closed')