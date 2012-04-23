require 'spec_helper'

describe "Components" do
  describe "GET /components" do
    it "displays components" do
      component = FactoryGirl.create(:component)
      visit components_path
      page.should have_content(component.name)
    end
  end

  describe "POST /components" do
    it "creates and displays a component with 2 parts" do
      part = FactoryGirl.create(:part)
      gear = FactoryGirl.create(:part, :name => "Gear")
      visit new_component_path
      fill_in "component_name", :with =>  "Articulating Arm"
      fill_in "component_quantity", :with => 100
      check part.name
      check gear.name
      click_button "Create Component"
      page.should have_content("Articulating Arm")
      page.should have_content(part.name)
      page.should have_content(gear.name)
    end
  end    
end
