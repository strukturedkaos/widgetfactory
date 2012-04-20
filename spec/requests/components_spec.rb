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
    it "creates a component" do
      visit new_component_path
      fill_in "component_name", :with =>  "Articulating Arm"
      fill_in "component_quantity", :with => 100
      click_button "Create Component"
      page.should have_content("Articulating Arm")
    end

    # it "displays the associated parts" do
    #   component = FactoryGirl.create(:component)
    #   part = FactoryGirl.create(:part)
    #   visit edit_component_path
    #   select "component_component_id", :from => part.name
    #   click_button "Add part"
    #   page.should have_content(part.name)
    # end
  end

  # describe "POST /components" do
  #   it "create a components" do
  #     visit new_components_path
  #     fill_in "components_name", :with => "Wall-E"
  #     fill_in "components_sku", :with => "A1345"
  #     fill_in "components_description", :with => "A crazy complicated components"
  #     select "Blue", :from => "components_color"
  #     fill_in "components_quantity", :with => "100"
  #     click_button "Create components"
  #     page.should have_content("Wall-E")
  #     page.should have_content("A1345")
  #     page.should have_content("A crazy complicated components")
  #     page.should have_content("Blue")
  #     page.should have_content("100")
  #   end
  # end

  # describe "UPDATE /components" do
  #   it "edits a components" do
  #     components = FactoryGirl.create(:components)
  #     visit edit_components_path(components)
  #     fill_in "components_name", :with => "Eva"
  #     fill_in "components_sku", :with => "A1345"
  #     fill_in "components_description", :with => "A crazy complicated components"
  #     select "Blue", :from => "components_color"
  #     fill_in "components_quantity", :with => "100"
  #     click_button "Update components"
  #     page.should have_content("Eva")
  #     page.should have_content("A1345")
  #     page.should have_content("A crazy complicated components")
  #     page.should have_content("Blue")
  #     page.should have_content("100")
  #   end
  # end

  # describe "DELETE /components" do
  #   it "destroys a components" do
  #     components = FactoryGirl.create(:components)      
  #     visit components_path
  #     click_button "Destroy"
  #     page.should_not have_content("Wall-E")
  #     page.should have_content("A1345")
  #   end
  # end    
end
