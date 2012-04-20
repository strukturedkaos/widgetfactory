class Component < ActiveRecord::Base
  
  attr_accessible :name, :quantity, :part_ids

  has_many :component_parts
  has_many :parts, :through => :component_parts

  validates :name, :presence => true
  validates :quantity, :presence => true
end
