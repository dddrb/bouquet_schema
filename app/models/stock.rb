class Stock < ActiveRecord::Base
  belongs_to :arrival
  belongs_to :location
  has_many :storages
end
