class Part < ActiveRecord::Base
  attr_accessible :description, :name, :sku, :color, :quantity
end
