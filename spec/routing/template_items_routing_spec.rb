require "rails_helper"

RSpec.describe TemplateItemsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/template_items").to route_to("template_items#index")
    end

    it "routes to #new" do
      expect(:get => "/template_items/new").to route_to("template_items#new")
    end

    it "routes to #show" do
      expect(:get => "/template_items/1").to route_to("template_items#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/template_items/1/edit").to route_to("template_items#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/template_items").to route_to("template_items#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/template_items/1").to route_to("template_items#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/template_items/1").to route_to("template_items#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/template_items/1").to route_to("template_items#destroy", :id => "1")
    end

  end
end
