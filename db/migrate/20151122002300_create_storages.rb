class CreateStorages < ActiveRecord::Migration
  def change
    create_table :storages do |t|
      t.string :state
      t.date :date
      t.integer :quantity
      t.references :stock, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
