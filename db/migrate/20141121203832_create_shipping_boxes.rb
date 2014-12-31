class CreateShippingBoxes < ActiveRecord::Migration
  def change
    create_table :spree_shipping_boxes do |t|
      t.string :name
      t.float :height
      t.float :width
      t.float :length
      t.float :diameter
      t.float :weight
      t.boolean :enabled, :default => true

      t.timestamps
    end
  end
end
