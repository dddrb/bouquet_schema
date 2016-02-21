require 'rails_helper'

RSpec.describe Material, type: :model do
  describe ".name" do
    example "initial value." do
      expect(FactoryGirl.create(:material).name).to eq "Gerbera"
    end
  end
end
