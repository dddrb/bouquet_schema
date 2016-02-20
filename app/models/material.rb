class Material < ActiveRecord::Base
  has_many :assemblies
  has_many :products, through: :assemblies
end
