require 'spec_helper'

describe "parts/edit" do
  before(:each) do
    @part = assign(:part, stub_model(Part,
      :name => "MyString",
      :sku => "RS1234",
      :description => "MyString",
      :color => "Color",
      :quantity => 100
    ))
  end

  it "renders the edit part form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => parts_path(@part), :method => "post" do
      assert_select "input#part_name", :name => "part[name]"
      assert_select "input#part_sku", :name => "part[sku]"
      assert_select "textarea#part_description", :name => "part[description]"
      assert_select "input#part_color", :name => "part[color]"
      assert_select "input#part_quantity", :name => "part[quantity]"
    end
  end
end
