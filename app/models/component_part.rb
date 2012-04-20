class ComponentPart < ActiveRecord::Base
  
  attr_accessible :component_id, :part_id

  belongs_to :component
  belongs_to :part  
end
