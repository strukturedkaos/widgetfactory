require 'spec_helper'

describe "Widgets" do

  describe "widget creation process" do
    it "creates and displays a widget with 2 components" do
      arm = FactoryGirl.create(:component)
      leg = FactoryGirl.create(:component, :name => "Leg")
      visit new_widget_path
      fill_in "widget_name", :with =>  "Engine"
      fill_in "widget_quantity", :with => 100
      check arm.name
      check leg.name
      click_button "Create Widget"
      page.should have_content("Engine")
      page.should have_content(arm.name)
      page.should have_content(leg.name)
    end 
  end  

  describe "widget editing process", :js => true do
    it "adds a component and updates the quantity of a widget" do
      arm = FactoryGirl.create(:component)
      leg = FactoryGirl.create(:component, :name => "Leg")
      engine = FactoryGirl.create(:widget, :components => [arm, leg])
      arm_widget_component = engine.widget_components.find_by_component_id(arm)
      leg_widget_component = engine.widget_components.find_by_component_id(leg)
      visit edit_widget_path(engine)
      bip_text arm_widget_component, :quantity, 50 
      bip_text leg_widget_component, :quantity, 75
      page.should have_content(50)
      page.should have_content(75)
      save_and_open_page
    end   
  end
end
