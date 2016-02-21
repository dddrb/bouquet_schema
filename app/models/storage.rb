class Storage < ActiveRecord::Base
  belongs_to :stock
  has_many :retrievals
end
