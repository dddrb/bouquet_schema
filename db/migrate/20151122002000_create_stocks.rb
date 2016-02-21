class CreateStocks < ActiveRecord::Migration
  def change
    create_table :stocks do |t|
      t.string :state
      t.date :date
      t.integer :quantity
      t.references :arrival, index: true, foreign_key: true
      t.references :location, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
