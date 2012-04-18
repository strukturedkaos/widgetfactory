class Part < ActiveRecord::Base
  attr_accessible :description, :name, :sku, :quantity
end
