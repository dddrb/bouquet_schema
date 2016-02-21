require 'rails_helper'

RSpec.describe Location, type: :model do
  describe ".name" do
    example "initial value." do
      expect(FactoryGirl.create(:location).name).to eq "Center"
    end
  end
end
