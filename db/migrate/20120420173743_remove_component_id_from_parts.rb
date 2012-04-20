class RemoveComponentIdFromParts < ActiveRecord::Migration
  def up
    remove_column :parts, :component_id
      end

  def down
    add_column :parts, :component_id, :string
  end
end
