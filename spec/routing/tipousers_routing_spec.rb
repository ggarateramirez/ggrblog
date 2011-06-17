require "spec_helper"

describe TipousersController do
  describe "routing" do

    it "routes to #index" do
      get("/tipousers").should route_to("tipousers#index")
    end

    it "routes to #new" do
      get("/tipousers/new").should route_to("tipousers#new")
    end

    it "routes to #show" do
      get("/tipousers/1").should route_to("tipousers#show", :id => "1")
    end

    it "routes to #edit" do
      get("/tipousers/1/edit").should route_to("tipousers#edit", :id => "1")
    end

    it "routes to #create" do
      post("/tipousers").should route_to("tipousers#create")
    end

    it "routes to #update" do
      put("/tipousers/1").should route_to("tipousers#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/tipousers/1").should route_to("tipousers#destroy", :id => "1")
    end

  end
end
