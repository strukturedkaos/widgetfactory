class ChangeSkuInParts < ActiveRecord::Migration
  def up
    change_column :parts, :sku, :string
  end

  def down
    change_column :parts, :sku, :integer
  end
end
