require 'spec_helper'

describe "tipousers/show.html.erb" do
  before(:each) do
    @tipouser = assign(:tipouser, stub_model(Tipouser,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
