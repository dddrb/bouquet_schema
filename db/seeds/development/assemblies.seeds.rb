after "#{Rails.env}:products", "#{Rails.env}:materials" do
  gerbera = Material.find_by(name: :Gerbera)
  tulip = Material.find_by(name: :Tulip)
  cosmos = Material.find_by(name: :Cosmos)
  sunflower = Material.find_by(name: :Sunflower)

  product = Product.find_by(name: :Simple)
  Assembly.seed(:product_id, :material_id,
    FactoryGirl.attributes_for(:assembly, product_id: product.id, material_id: gerbera.id)
  )

  product = Product.find_by(name: :Cute)
  Assembly.seed(:product_id, :material_id,
    FactoryGirl.attributes_for(:assembly, product_id: product.id, material_id: gerbera.id),
    FactoryGirl.attributes_for(:assembly, product_id: product.id, material_id: tulip.id, quantity: 4)
  )

  product = Product.find_by(name: :Cool)
  Assembly.seed(:product_id, :material_id,
    FactoryGirl.attributes_for(:assembly, product_id: product.id, material_id: gerbera.id),
    FactoryGirl.attributes_for(:assembly, product_id: product.id, material_id: cosmos.id, quantity: 6)
  )

  product = Product.find_by(name: :Passion)
  Assembly.seed(:product_id, :material_id,
    FactoryGirl.attributes_for(:assembly, product_id: product.id, material_id: gerbera.id),
    FactoryGirl.attributes_for(:assembly, product_id: product.id, material_id: sunflower.id, quantity: 8)
  )
end
