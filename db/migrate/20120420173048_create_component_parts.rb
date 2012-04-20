class CreateComponentParts < ActiveRecord::Migration
  def change
    create_table :component_parts do |t|
      t.integer :component_id
      t.integer :part_id

      t.timestamps
    end
  end
end
