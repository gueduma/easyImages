require "rails_helper"

RSpec.describe GaleriaController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/galeria").to route_to("galeria#index")
    end

    it "routes to #new" do
      expect(:get => "/galeria/new").to route_to("galeria#new")
    end

    it "routes to #show" do
      expect(:get => "/galeria/1").to route_to("galeria#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/galeria/1/edit").to route_to("galeria#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/galeria").to route_to("galeria#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/galeria/1").to route_to("galeria#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/galeria/1").to route_to("galeria#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/galeria/1").to route_to("galeria#destroy", :id => "1")
    end

  end
end
