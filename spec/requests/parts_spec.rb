require 'spec_helper'

describe "Parts" do
  describe "GET /parts" do
    it "displays parts" do
      part = FactoryGirl.create(:part)
      visit parts_path
      page.should have_content(part.name)
      page.should have_content(part.sku)    
    end
  end

  describe "POST /parts" do
    it "create a part" do
      visit new_part_path
      fill_in "part_name", :with => "Wall-E"
      fill_in "part_sku", :with => "A1345"
      fill_in "part_description", :with => "A crazy complicated part"
      select "Blue", :from => "part_color"
      fill_in "part_quantity", :with => "100"
      click_button "Create Part"
      page.should have_content("Wall-E")
      page.should have_content("Blue")
    end
  end
end
