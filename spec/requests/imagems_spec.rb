require 'rails_helper'

RSpec.describe "Imagems", type: :request do
  describe "GET /imagems" do
    it "works! (now write some real specs)" do
      get imagems_path
      expect(response).to have_http_status(200)
    end
  end
end
