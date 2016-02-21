class Shipment < ActiveRecord::Base
  belongs_to :sales_order
  has_many :deliveries
  has_many :locations, through: :deliveries
end
