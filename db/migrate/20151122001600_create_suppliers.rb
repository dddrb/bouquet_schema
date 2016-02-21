class CreateSuppliers < ActiveRecord::Migration
  def change
    create_table :suppliers do |t|
      t.string :state
      t.string :name

      t.timestamps null: false
    end
  end
end
