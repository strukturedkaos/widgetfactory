class CreateWidgetComponents < ActiveRecord::Migration
  def change
    create_table :widget_components do |t|
      t.integer :widget_id
      t.integer :component_id

      t.timestamps
    end

    add_index :widget_components, :widget_id
    add_index :widget_components, :component_id
    
  end
end
