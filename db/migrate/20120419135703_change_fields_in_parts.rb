class ChangeFieldsInParts < ActiveRecord::Migration
  def up
    change_column :parts, :description, :text
    add_column :parts, :color, :string
  end

  def down
    change_column :parts, :description, :string
    remove_column :parts, :color
  end
end
