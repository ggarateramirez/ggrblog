require "spec_helper"

describe ProvinciasController do
  describe "routing" do

    it "routes to #index" do
      get("/provincias").should route_to("provincias#index")
    end

    it "routes to #new" do
      get("/provincias/new").should route_to("provincias#new")
    end

    it "routes to #show" do
      get("/provincias/1").should route_to("provincias#show", :id => "1")
    end

    it "routes to #edit" do
      get("/provincias/1/edit").should route_to("provincias#edit", :id => "1")
    end

    it "routes to #create" do
      post("/provincias").should route_to("provincias#create")
    end

    it "routes to #update" do
      put("/provincias/1").should route_to("provincias#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/provincias/1").should route_to("provincias#destroy", :id => "1")
    end

  end
end
