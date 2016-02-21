FactoryGirl.define do
  factory :purchase_order do
    state nil
    date "2014-03-21"
    quantity 1
    material nil
    supplier nil
  end
end
