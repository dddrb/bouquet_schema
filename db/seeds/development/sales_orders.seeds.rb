after "#{Rails.env}:products", "#{Rails.env}:customers", "#{Rails.env}:purchase_orders" do
  product = Product.find_by(name: :Simple)
  customer = Customer.find_by(name: :Master)
  location = Location.find_by(name: :Center)

  SalesOrder.seed(:product_id, :customer_id,
    FactoryGirl.attributes_for(:sales_order, product_id: product.id, customer_id: customer.id)
  )

  sales_order = SalesOrder.find_by(product_id: product.id, customer_id: customer.id)
  Shipment.seed(:sales_order_id,
    FactoryGirl.attributes_for(:shipment, sales_order_id: sales_order.id)
  )

  shipment = Shipment.find_by(sales_order_id: sales_order.id)
  Delivery.seed(:location_id, :shipment_id,
    FactoryGirl.attributes_for(:delivery, location_id: location.id, shipment_id: shipment.id)
  )

  delivery = Delivery.find_by(location_id: location.id, shipment_id: shipment.id)
  Retrieval.seed(:delivery_id,
    FactoryGirl.attributes_for(:retrieval, delivery_id: delivery.id, storage_id: Storage.last.id)
  )
end
