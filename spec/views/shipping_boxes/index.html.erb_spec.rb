require 'spec_helper'

describe "shipping_boxes/index" do
  before(:each) do
    assign(:shipping_boxes, [
      stub_model(ShippingBox,
        :height => "",
        :width => "",
        :length => "",
        :diameter => "",
        :weight => 1.5
      ),
      stub_model(ShippingBox,
        :height => "",
        :width => "",
        :length => "",
        :diameter => "",
        :weight => 1.5
      )
    ])
  end

  it "renders a list of shipping_boxes" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
  end
end
