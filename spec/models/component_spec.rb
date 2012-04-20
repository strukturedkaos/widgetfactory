require 'spec_helper'

describe Component do

  it "adds a part to a component" do
    component = FactoryGirl.create(:component)
    part = FactoryGirl.create(:part)
    component.parts << part
    component.parts.last.should eql(part)
  end
 
  it "has associated parts" do
    component = FactoryGirl.create(:component)
    part = FactoryGirl.create(:part)
    component.parts << part
    component.parts.size.should > 0
  end

end
