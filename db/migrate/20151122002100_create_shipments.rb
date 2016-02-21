class CreateShipments < ActiveRecord::Migration
  def change
    create_table :shipments do |t|
      t.string :state
      t.date :date
      t.integer :quantity
      t.references :sales_order, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
