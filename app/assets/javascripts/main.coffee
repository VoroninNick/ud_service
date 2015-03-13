# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/


$(document).ready ->
  $closeButton = $('.close-primary-menu-button')
  $openButton = $('.open-primary-menu-button')

  $mainMenuWrap = $('.main-menu')
  $pageWrap = $('.page-wrap')
  $yourBestMatchWrap = $('.your-best-match-wrap')
  $orderedListWrap = $('.ordered-list-wrap')
  $mainBlockWrap = $('.main-block-wrap')

  $closeButton.click ->
    $wrapper = $(this).closest('.grid-frame')
    $wrapper.addClass('primary-closed')
    $mainMenuWrap.removeClass('large-3')
    $mainMenuWrap.addClass('large-1')
    $pageWrap.removeClass('large-9')
    $pageWrap.addClass('large-11')

    $yourBestMatchWrap.removeClass('large-up-3')
    $yourBestMatchWrap.addClass('large-up-4')


  $openButton.click ->
    $mainMenuWrap.removeClass('large-1')
    $mainMenuWrap.addClass('large-3')
    $wrapper = $(this).closest('.grid-frame')
    $wrapper.removeClass('primary-closed')
    $pageWrap.removeClass('large-11')
    $pageWrap.addClass('large-9')

    $yourBestMatchWrap.removeClass('large-up-4')
    $yourBestMatchWrap.addClass('large-up-3')

  $('select.view-mode').change ->
    $wrapper = $(this).closest('.grid-frame')
    if $(this).val() == 'minimize'
        $wrapper.addClass('ordered-list-closed')
        $orderedListWrap.removeClass('large-3')
        $orderedListWrap.addClass('large-1')
        $mainBlockWrap.removeClass('large-9')
        $mainBlockWrap.addClass('large-11')

    else if $(this).val() == 'fullscreen'
      $wrapper.removeClass('ordered-list-closed')
      $orderedListWrap.removeClass('large-1')
      $orderedListWrap.addClass('large-3')
      $mainBlockWrap.removeClass('large-11')
      $mainBlockWrap.addClass('large-9')


  $('.items-menu a').click (e) ->
    e.stopPropagation()
    $wrap = $(this).closest('.items-menu')
    $menu = $wrap.find('.menu-wrap')
    if $menu.hasClass('close-menu')
      $menu.removeClass('close-menu')
    else
      $menu.addClass('close-menu')

  $('html').click ->
    $('.menu-wrap').addClass('close-menu')
    $('.header-navigation section li.profile-avatar').addClass('close')

  $('li.profile-avatar').click (e) ->
    e.stopPropagation()
    if $(this).hasClass('close')
      $(this).removeClass('close')
    else
      $(this).addClass('close')