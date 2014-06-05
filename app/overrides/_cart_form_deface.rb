Deface::Override.new(:virtual_path  => "spree/products/_cart_form",
                     :surround => "erb:contains('number_field_tag')",
                     :text          => '<% if @product and @product.set_count and @product.set_count > 1 %><%= render :partial => "qty_select" %><% else %><%= render_original %><% end %>',
                     :name          => "product_select_as_quantity"
                     )
