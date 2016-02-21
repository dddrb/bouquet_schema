class PurchaseOrder < ActiveRecord::Base
  belongs_to :material
  belongs_to :supplier
  has_one :arrival
end
