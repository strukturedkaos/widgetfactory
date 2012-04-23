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
end
