---
# Register this as a JS file
---

disableBodyScroll = ->
  $("body").addClass('no-scroll')
  $(".page-wrapper").addClass('no-scroll')

enableBodyScroll = ->
  $("body").removeClass('no-scroll')
  $(".page-wrapper").removeClass('no-scroll')

toggleBodyScroll = ->
  if $('body').hasClass('no-scroll')
    enableBodyScroll()
  else
    disableBodyScroll()

verticalAlign = (child) ->
  $child = $(child)
  $parent = $(child).parents('[data-vertical-align-parent]')
  topMargin = (($parent.height() - $child.height()) / 2)
  $parent.css
    position: 'relative'
  $child.css
    'margin-top': topMargin
    position: 'absolute'

clearVerticalAlign = (child) ->
  $child = $(child)
  $parent = $(child).parents('[data-vertical-align-parent]')
  $parent.css
    position: 'inherit'
  $child.css
    'margin-top': 0
    position: 'inherit'

triggerVerticalAlign = ->
  $('[data-vertical-align-to]').each ->
    if $(window).width() < $(this).attr('data-vertical-align-to')
      verticalAlign(this)
    else
      clearVerticalAlign(this)

$ ->
  # Document Ready
  $('#nav').onePageNav
    begin: ->
      $('#page-nav').removeClass('active')
      enableBodyScroll()
    changeHash: true
    scrollChange: ($currentListItem) ->
      window.location.hash = $currentListItem.find('a').attr('href')

  if window.location.hash != undefined or window.location.hash != ""
    $('html, body').css
      scrollTop: $(window.location.hash).offset().top

  triggerVerticalAlign()

  $('[data-toggle-nav]').click ->
    target = $(this).attr('data-toggle-nav')
    $(target).toggleClass('active')
    toggleBodyScroll()

  $("#post-0").waypoint((direction) ->
    $("#page-nav").addClass "invert"  if direction is "down"
    $("#page-nav").removeClass "invert"  if direction is "up"
    return
  ,
    offset: -($('#post-0').height() - 80)
  )


$(window).load ->
  # Window Loaded

$(window).resize ->
  triggerVerticalAlign()
