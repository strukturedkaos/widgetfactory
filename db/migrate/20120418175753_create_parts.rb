class CreateParts < ActiveRecord::Migration
  def change
    create_table :parts do |t|
      t.string :name
      t.integer :sku
      t.string :description

      t.timestamps
    end
  end
end
