Spree.showSetCount = (count) ->
  multiplier = $('div#set_contains').data("set-count")
  quantity = count * multiplier
  $('div#set_contains').html 'Sold in increments '+multiplier+', your purchase: '+quantity

# setup count updater if we have a set count
$ ->
  ($ 'div#set_contains').each (index) ->
    if index == 0
      $('div.add-to-cart input').change () ->
        Spree.showSetCount($(this).val())