$ ->
  if $('#map-container').length
    markerpoint = new google.maps.LatLng(49.0753773,18.0202609)
    mapOptions  =
      zoom: 14
      center: markerpoint
      mapTypeControl: false
      zoomControl: false
      zoomControlOptions: style: google.maps.ZoomControlStyle.SMALL
      scaleControl: false
      scrollwheel: false

    wrapper = $('#map-container').get(0)
    map    = new google.maps.Map(wrapper, mapOptions)
    img    = '/assets/images/map-pin.png'
    image  = new google.maps.MarkerImage(img, new google.maps.Size(55, 82))
    marker = new google.maps.Marker(
      position: markerpoint
      icon: image
      map: map)

  $('[data-toggle="show-request-form"]').on 'click', ->
    $('.forsale--box').addClass('blind-form').removeClass('visible-form')
    box = $(this).closest('.forsale--box')
    box.addClass('visible-form').removeClass('blind-form')
