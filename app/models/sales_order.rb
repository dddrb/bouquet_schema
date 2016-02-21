class SalesOrder < ActiveRecord::Base
  belongs_to :product
  belongs_to :customer
  has_one :shipment
end
