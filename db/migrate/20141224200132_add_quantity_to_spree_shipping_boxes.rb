class AddQuantityToSpreeShippingBoxes < ActiveRecord::Migration
  def change
    add_column :spree_shipping_boxes, :quantity, :integer
  end
end