class Delivery < ActiveRecord::Base
  belongs_to :shipment
  belongs_to :location
  has_many :retrievals
end
