class AddComponentIdToParts < ActiveRecord::Migration
  def change
    add_column :parts, :component_id, :integer
  end
end
