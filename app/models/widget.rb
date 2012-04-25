class Widget < ActiveRecord::Base

  attr_accessible :name, :quantity, :component_ids, :widget_components_attributes

  has_many :widget_components
  has_many :components, :through => :widget_components

  accepts_nested_attributes_for :widget_components
end
