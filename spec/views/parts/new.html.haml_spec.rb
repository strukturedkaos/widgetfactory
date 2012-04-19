require 'spec_helper'

describe "parts/new" do
  before(:each) do
    assign(:part, stub_model(Part,
      :name => "MyString",
      :sku => "RS1233",
      :description => "Description",
      :color => "Blue",
      :quantity => 100
    ).as_new_record)
  end

  it "renders new part form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => parts_path, :method => "post" do
      assert_select "input#part_name", :name => "part[name]"
      assert_select "input#part_sku", :name => "part[sku]"
      assert_select "textarea#part_description", :name => "part[description]"
      assert_select "select#part_color", :name => "part[color]"
      assert_select "input#part_quantity", :name => "part[quantity]"      
    end
  end
end
