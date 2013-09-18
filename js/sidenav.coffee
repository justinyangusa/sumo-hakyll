refreshScrollSpy = ->
  $('[data-spy="scroll"]').each ->
    $(@).scrollspy 'refresh'

$ ->
  $sideNav = $('#sideNav')
  if $sideNav.length
    $sideNav.find('ul').addClass 'nav'
    $sideNav.affix
      offset:
        top: 56
    refreshScrollSpy()
    $(window).resize refreshScrollSpy
    $('.sidenavTitle').click ->
      $('.active').removeClass 'active'
      $(window).trigger 'resize' # fix odd rendering bug
