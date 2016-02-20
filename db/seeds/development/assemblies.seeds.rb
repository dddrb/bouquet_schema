after "#{Rails.env}:products", "#{Rails.env}:materials" do
  product = Product.find_by(name: :MyString)
  material = Material.find_by(name: :MyString)
  product.assemblies.find_or_create_by(material: material)
end
