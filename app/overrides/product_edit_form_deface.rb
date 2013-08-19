Deface::Override.new(:virtual_path  => "spree/admin/products/_form",
                     :insert_before => "ul#shipping_specs",
                     :text          => " <div class='field'>
                        <%= f.label :set_count, Spree.t(:set_count) %>
                        <%= f.text_field :set_count, :size => 16 %>
                        </div>",
                     :name          => "products_set_count")