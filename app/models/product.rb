class Product < ActiveRecord::Base
  has_many :assemblies
  has_many :materials, through: :assemblies
end
