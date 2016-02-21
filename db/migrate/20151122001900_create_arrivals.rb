class CreateArrivals < ActiveRecord::Migration
  def change
    create_table :arrivals do |t|
      t.string :state
      t.date :date
      t.integer :quantity
      t.references :purchase_order, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
