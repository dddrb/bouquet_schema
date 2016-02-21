class CreateRetrievals < ActiveRecord::Migration
  def change
    create_table :retrievals do |t|
      t.string :state
      t.date :date
      t.integer :quantity
      t.references :storage, index: true, foreign_key: true
      t.references :delivery, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
