class Supplier < ActiveRecord::Base
  has_many :purchase_orders
  has_many :materials, through: :purchase_orders
end
