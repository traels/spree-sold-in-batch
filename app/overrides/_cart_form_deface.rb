Deface::Override.new(:virtual_path  => "spree/products/_cart_form",
                     :insert_bottom => "div.add-to-cart",
                     :text          => '<% if @product and @product.set_count and @product.set_count > 1 %><div class="set_contains" data-set-count="<%= @product.set_count.to_i %>"><%= "#{Spree.t(:set_contains_x_products, :count => @product.set_count)}" %></div><% end %>',
                     :name          => "product_show_set_count"
                     )