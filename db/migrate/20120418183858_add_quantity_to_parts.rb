class AddQuantityToParts < ActiveRecord::Migration
  def change
    add_column :parts, :quantity, :integer
  end
end
