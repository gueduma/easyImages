require 'rails_helper'

RSpec.describe "Galeria", type: :request do
  describe "GET /galeria" do
    it "works! (now write some real specs)" do
      get galeria_path
      expect(response).to have_http_status(200)
    end
  end
end
