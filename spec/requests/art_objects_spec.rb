require 'rails_helper'

RSpec.describe "ArtObjects", :type => :request do
  describe "GET /art_objects" do
    it "works! (now write some real specs)" do
      get art_objects_path
      expect(response).to have_http_status(200)
    end
  end
end
