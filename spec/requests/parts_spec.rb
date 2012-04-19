require 'spec_helper'

describe "Parts" do
  describe "GET /parts" do
    it "displays parts" do
      part = FactoryGirl.create(:part)
      visit parts_path
      page.should have_content("Wall-E")
    end
  end

  describe "POST /parts" do
    it "create a part" do
      visit new_part_path
      fill_in "part_name", :with => "Wall-E"
      fill_in "part_sku", :with => "A1345"
      fill_in "part_description", :with => "A crazy complicated part"
      fill_in "part_color", :with => "Magenta"
      fill_in "part_quantity", :with => "100"
      click_button "Create Part"
      page.should have_content("Wall-E")
      page.should have_content("A1345")
      page.should have_content("A crazy complicated part")
      page.should have_content("Magenta")
      page.should have_content("100")
    end
  end

  describe "UPDATE /parts" do
    it "edits a part" do
      part = FactoryGirl.create(:part)
      visit edit_part_path(part)
      fill_in "part_name", :with => "Wall-E"
      fill_in "part_sku", :with => "A1345"
      fill_in "part_description", :with => "A crazy complicated part"
      fill_in "part_color", :with => "Magenta"
      fill_in "part_quantity", :with => "100"
      click_button "Update Part"
      page.should have_content("Wall-E")
      page.should have_content("A1345")
      page.should have_content("A crazy complicated part")
      page.should have_content("Magenta")
      page.should have_content("100")
    end
  end

  # describe "DELETE /parts" do
  #   it "destroys a part" do
  #     part = FactoryGirl.create(:part)      
  #     visit parts_path
  #     click_button "Destroy"
  #     page.should_not have_content("Wall-E")
  #     page.should have_content("A1345")
  #   end
  # end    
end
