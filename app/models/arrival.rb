class Arrival < ActiveRecord::Base
  belongs_to :purchase_order
  has_many :stocks
  has_many :locations, through: :stocks
end
