class AddSetCountToProduct < ActiveRecord::Migration
  def change
    add_column :spree_products, :set_count, :integer
  end
end
