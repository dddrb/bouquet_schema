Material.seed(:name,
  FactoryGirl.attributes_for(:material),
  FactoryGirl.attributes_for(:material, name: :Tulip),
  FactoryGirl.attributes_for(:material, name: :Cosmos),
  FactoryGirl.attributes_for(:material, name: :Sunflower)
)
