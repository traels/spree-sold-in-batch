Spree.showSetCount = (count) ->
  multiplier = $('div#set_contains').data("set-count")
  quantity = count * multiplier
  $('div#set_contains').html 'Sold in increments of '+multiplier+', your purchase: '+quantity

# setup count updater if we have a set count
$ ->
  ($ 'div#set_contains').each (index) ->
    if index == 0
      $('div.add-to-cart input').change () ->
        Spree.showSetCount($(this).val())
  if ($ 'form#update-cart').is('*')
    ($ 'form#update-cart a.delete').show().one 'click', ->
      ($ this).parents('.line-item').first().find('select').val 0
      false
