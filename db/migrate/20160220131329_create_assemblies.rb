class CreateAssemblies < ActiveRecord::Migration
  def change
    create_table :assemblies do |t|
      t.references :product, index: true, foreign_key: true
      t.references :material, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
