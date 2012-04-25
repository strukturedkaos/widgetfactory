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

  describe "widget components and parts process" do
      let(:part) { FactoryGirl.create(:part) }
      let(:arm) { FactoryGirl.create(:component, :parts => [part]) }
      let(:leg) { FactoryGirl.create(:component, :name => "Leg") }
      let(:engine) { FactoryGirl.create(:widget, :components => [arm, leg]) }
      let(:arm_widget_component) { engine.widget_components.find_by_component_id(arm) }
      let(:leg_widget_component) { engine.widget_components.find_by_component_id(leg) }

    it "adds a component, updates, and the widget component quantity and shows quantity of parts required", :js => true do
      visit edit_widget_path(engine)
      bip_text arm_widget_component, :quantity, 50 
      bip_text leg_widget_component, :quantity, 75
      page.should have_content(50)
      page.should have_content(75)
      visit widget_path(engine)
      page.should have_content(arm.parts(part).name)
      page.should have_content(arm_widget_component.quantity)      
    end   
  end
end
