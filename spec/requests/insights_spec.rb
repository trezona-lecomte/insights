require 'rails_helper'

RSpec.describe "Insights", :type => :request do
  describe "GET /insights" do
    it "works! (now write some real specs)" do
      get insights_path
      expect(response).to have_http_status(200)
    end
  end
end
