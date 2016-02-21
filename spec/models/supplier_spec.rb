require 'rails_helper'

RSpec.describe Supplier, type: :model do
  describe ".name" do
    example "initial value." do
      expect(FactoryGirl.create(:supplier).name).to eq "Flower"
    end
  end
end
