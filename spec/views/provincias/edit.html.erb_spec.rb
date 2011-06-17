require 'spec_helper'

describe "provincias/edit.html.erb" do
  before(:each) do
    @provincia = assign(:provincia, stub_model(Provincia,
      :name => "MyString"
    ))
  end

  it "renders the edit provincia form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => provincias_path(@provincia), :method => "post" do
      assert_select "input#provincia_name", :name => "provincia[name]"
    end
  end
end
