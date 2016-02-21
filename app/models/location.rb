class Location < ActiveRecord::Base
  has_many :stocks
  has_many :arrivals, through: :stocks
  has_many :deliveries
  has_many :shipments, through: :deliveries
end
