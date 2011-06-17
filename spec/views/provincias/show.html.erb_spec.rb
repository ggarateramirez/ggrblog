require 'spec_helper'

describe "provincias/show.html.erb" do
  before(:each) do
    @provincia = assign(:provincia, stub_model(Provincia,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
