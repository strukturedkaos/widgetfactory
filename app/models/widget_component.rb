class WidgetComponent < ActiveRecord::Base

  attr_accessible :component_id, :widget_id, :quantity

  belongs_to :widget
  belongs_to :component
end

