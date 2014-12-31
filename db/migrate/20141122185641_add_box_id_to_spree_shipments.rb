class AddBoxIdToSpreeShipments < ActiveRecord::Migration
  def change
    add_column :spree_shipments, :shipping_box_id, :integer
  end
end