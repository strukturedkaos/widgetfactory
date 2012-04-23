class AddIndexesToComponentParts < ActiveRecord::Migration
  def change
    add_index :component_parts, :component_id
    add_index :component_parts, :part_id
  end
end
