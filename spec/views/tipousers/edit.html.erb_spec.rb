require 'spec_helper'

describe "tipousers/edit.html.erb" do
  before(:each) do
    @tipouser = assign(:tipouser, stub_model(Tipouser,
      :name => "MyString"
    ))
  end

  it "renders the edit tipouser form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => tipousers_path(@tipouser), :method => "post" do
      assert_select "input#tipouser_name", :name => "tipouser[name]"
    end
  end
end
