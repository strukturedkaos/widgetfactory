class Widget < ActiveRecord::Base

  attr_accessible :name, :quantity, :component_ids

  has_many :widget_components
  has_many :components, :through => :widget_components
end
