require 'spec_helper'

describe "provincias/new.html.erb" do
  before(:each) do
    assign(:provincia, stub_model(Provincia,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new provincia form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => provincias_path, :method => "post" do
      assert_select "input#provincia_name", :name => "provincia[name]"
    end
  end
end
