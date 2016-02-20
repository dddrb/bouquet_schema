json.array!(@assemblies) do |assembly|
  json.extract! assembly, :id, :product_id, :material_id
  json.url assembly_url(assembly, format: :json)
end
