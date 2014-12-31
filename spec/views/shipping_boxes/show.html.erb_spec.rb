require 'spec_helper'

describe "shipping_boxes/show" do
  before(:each) do
    @shipping_box = assign(:shipping_box, stub_model(ShippingBox,
      :height => "",
      :width => "",
      :length => "",
      :diameter => "",
      :weight => 1.5
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    rendered.should match(//)
    rendered.should match(//)
    rendered.should match(//)
    rendered.should match(/1.5/)
  end
end
