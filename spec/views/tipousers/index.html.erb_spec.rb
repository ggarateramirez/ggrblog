require 'spec_helper'

describe "tipousers/index.html.erb" do
  before(:each) do
    assign(:tipousers, [
      stub_model(Tipouser,
        :name => "Name"
      ),
      stub_model(Tipouser,
        :name => "Name"
      )
    ])
  end

  it "renders a list of tipousers" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
