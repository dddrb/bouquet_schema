class Retrieval < ActiveRecord::Base
  belongs_to :storage
  belongs_to :delivery
end
