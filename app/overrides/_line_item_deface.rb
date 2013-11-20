Deface::Override.new(:virtual_path  => "spree/orders/_line_item",
                     :surround => "erb:contains('line_item_quantity')",
                     :text          => '<% if variant.product.set_count and variant.product.set_count > 1 %><%= item_form.select :quantity, options_for_select((0..500).reject{|i| i % item_form.object.variant.product.set_count != 0 }, item_form.object.quantity), :class => "line_item_quantity" %><% else %><%= render_original %><% end %>',
                     :name          => "cart_select_as_quantity"
                     )