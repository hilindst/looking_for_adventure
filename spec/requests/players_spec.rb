require 'rails_helper'

RSpec.describe "Players", type: :request do
  describe "GET /players" do
    it "works! (now write some real specs)" do
      get players_index_path
      expect(response).to have_http_status(200)
    end
  end

  # "testing with rspec"
end
