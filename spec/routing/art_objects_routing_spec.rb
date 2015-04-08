require "rails_helper"

RSpec.describe ArtObjectsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/art_objects").to route_to("art_objects#index")
    end

    it "routes to #new" do
      expect(:get => "/art_objects/new").to route_to("art_objects#new")
    end

    it "routes to #show" do
      expect(:get => "/art_objects/1").to route_to("art_objects#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/art_objects/1/edit").to route_to("art_objects#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/art_objects").to route_to("art_objects#create")
    end

    it "routes to #update" do
      expect(:put => "/art_objects/1").to route_to("art_objects#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/art_objects/1").to route_to("art_objects#destroy", :id => "1")
    end

  end
end
