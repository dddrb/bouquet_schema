require 'rails_helper'

RSpec.describe Customer, type: :model do
  describe ".name" do
    example "initial value." do
      expect(FactoryGirl.create(:customer).name).to eq "Master"
    end
  end
end
