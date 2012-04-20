class Part < ActiveRecord::Base

  attr_accessible :description, :name, :sku, :color, :quantity, :component_id

  belongs_to :component
  belongs_to :component_parts

  # validates_presence_of :name
  # validates_presence_of :description
  # validates_presence_of :sku
  # validates_presence_of :color
  # validates_presence_of :quantity
end
