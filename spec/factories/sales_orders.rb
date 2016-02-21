FactoryGirl.define do
  factory :sales_order do
    state nil
    date "2014-03-21"
    quantity 1
    product nil
    customer nil
  end
end
