require 'spec_helper'

describe "shipping_boxes/edit" do
  before(:each) do
    @shipping_box = assign(:shipping_box, stub_model(ShippingBox,
      :height => "",
      :width => "",
      :length => "",
      :diameter => "",
      :weight => 1.5
    ))
  end

  it "renders the edit shipping_box form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", shipping_box_path(@shipping_box), "post" do
      assert_select "input#shipping_box_height[name=?]", "shipping_box[height]"
      assert_select "input#shipping_box_width[name=?]", "shipping_box[width]"
      assert_select "input#shipping_box_length[name=?]", "shipping_box[length]"
      assert_select "input#shipping_box_diameter[name=?]", "shipping_box[diameter]"
      assert_select "input#shipping_box_weight[name=?]", "shipping_box[weight]"
    end
  end
end
