module Spree
  class ShippingBox < ActiveRecord::Base
    has_many :shipments
    # attr_accessible :name, :diameter, :height, :length, :weight, :width, :quantity, :enabled
  end
end
