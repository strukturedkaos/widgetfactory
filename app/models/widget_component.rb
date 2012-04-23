class WidgetComponent < ActiveRecord::Base

  attr_accessible :component_id, :widget_id

  belongs_to :widget
  belongs_to :component
end

