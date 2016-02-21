class Customer < ActiveRecord::Base
  has_many :sales_orders
  has_many :products, through: :sales_orders
end
