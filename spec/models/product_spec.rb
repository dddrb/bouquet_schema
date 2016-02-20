require 'rails_helper'

RSpec.describe Product, type: :model do
  describe ".name" do
    example "initial value." do
      expect(FactoryGirl.create(:product).name).to eq "MyString"
    end
  end
end
