require 'rails_helper'

RSpec.describe "TemplateItems", type: :request do
  describe "GET /template_items" do
    it "works! (now write some real specs)" do
      get template_items_path
      expect(response).to have_http_status(200)
    end
  end
end