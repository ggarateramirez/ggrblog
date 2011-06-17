require 'spec_helper'

describe "tipousers/new.html.erb" do
  before(:each) do
    assign(:tipouser, stub_model(Tipouser,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new tipouser form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => tipousers_path, :method => "post" do
      assert_select "input#tipouser_name", :name => "tipouser[name]"
    end
  end
end
