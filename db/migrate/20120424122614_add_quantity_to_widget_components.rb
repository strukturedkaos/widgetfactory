class AddQuantityToWidgetComponents < ActiveRecord::Migration
  def change
    add_column :widget_components, :quantity, :integer
  end
end
