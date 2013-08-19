Spree.showSetCount = (count) ->
  multiplier = $('div.add-to-cart div.set_contains').data("set-count")
  quantity = count * multiplier
  $('div.add-to-cart div.set_contains').html 'Set contains '+multiplier+' pcs, your purchase: '+quantity+' pcs'

# setup count updater if we have a set count
$ ->
  ($ 'div.add-to-cart div.set_contains').each (index) ->
    if index == 0
      $('div.add-to-cart input').change () ->
        Spree.showSetCount($(this).val())