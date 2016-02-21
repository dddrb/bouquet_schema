after "#{Rails.env}:materials", "#{Rails.env}:suppliers", "#{Rails.env}:locations" do
  material = Material.find_by(name: :Gerbera)
  supplier = Supplier.find_by(name: :Flower)
  location = Location.find_by(name: :Center)

  PurchaseOrder.seed(:material_id, :supplier_id,
    FactoryGirl.attributes_for(:purchase_order, material_id: material.id, supplier_id: supplier.id)
  )

  purchase_order = PurchaseOrder.find_by(material_id: material.id, supplier_id: supplier.id)
  Arrival.seed(:purchase_order_id,
    FactoryGirl.attributes_for(:arrival, purchase_order_id: purchase_order.id)
  )

  arrival = Arrival.find_by(purchase_order_id: purchase_order.id)
  Stock.seed(:location_id, :arrival_id,
    FactoryGirl.attributes_for(:stock, location_id: location.id, arrival_id: arrival.id)
  )

  stock = Stock.find_by(location_id: location.id, arrival_id: arrival.id)
  Storage.seed(:stock_id,
    FactoryGirl.attributes_for(:storage, stock_id: stock.id)
  )
end
