class Component < ActiveRecord::Base
  
  attr_accessible :name, :quantity

  has_many :parts

  validates :name, :presence => true
  validates :quantity, :presence => true

  # def parts
  #   Part.where(:component_id => self)
  # end

  # def add_part(part)
  #   part.update_attributes(:component_id => self)
  # end
end
