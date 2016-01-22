

# Makes images clickable to add to cart

$(document).on "ready, page:change", ->
  $('.store .entry > img').click ->
    $(this).parent().find(':submit').click()