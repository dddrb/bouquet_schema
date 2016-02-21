Product.seed(:name,
  FactoryGirl.attributes_for(:product),
  FactoryGirl.attributes_for(:product, name: :Cute),
  FactoryGirl.attributes_for(:product, name: :Cool),
  FactoryGirl.attributes_for(:product, name: :Passion)
)
