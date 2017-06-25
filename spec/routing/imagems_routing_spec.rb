require "rails_helper"

RSpec.describe ImagemsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/imagems").to route_to("imagems#index")
    end

    it "routes to #new" do
      expect(:get => "/imagems/new").to route_to("imagems#new")
    end

    it "routes to #show" do
      expect(:get => "/imagems/1").to route_to("imagems#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/imagems/1/edit").to route_to("imagems#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/imagems").to route_to("imagems#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/imagems/1").to route_to("imagems#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/imagems/1").to route_to("imagems#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/imagems/1").to route_to("imagems#destroy", :id => "1")
    end

  end
end
