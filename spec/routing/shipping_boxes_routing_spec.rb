require "spec_helper"

describe ShippingBoxesController do
  describe "routing" do

    it "routes to #index" do
      get("/shipping_boxes").should route_to("shipping_boxes#index")
    end

    it "routes to #new" do
      get("/shipping_boxes/new").should route_to("shipping_boxes#new")
    end

    it "routes to #show" do
      get("/shipping_boxes/1").should route_to("shipping_boxes#show", :id => "1")
    end

    it "routes to #edit" do
      get("/shipping_boxes/1/edit").should route_to("shipping_boxes#edit", :id => "1")
    end

    it "routes to #create" do
      post("/shipping_boxes").should route_to("shipping_boxes#create")
    end

    it "routes to #update" do
      put("/shipping_boxes/1").should route_to("shipping_boxes#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/shipping_boxes/1").should route_to("shipping_boxes#destroy", :id => "1")
    end

  end
end
