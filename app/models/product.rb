class Product < ActiveRecord::Base
  has_many :assemblies
  has_many :materials, through: :assemblies
  has_many :sales_orders
  has_many :customers, through: :sales_orders
end
