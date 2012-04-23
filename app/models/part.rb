class Part < ActiveRecord::Base

  attr_accessible :description, :name, :sku, :color, :quantity, :component_id

  belongs_to :component
  belongs_to :component_parts

end
