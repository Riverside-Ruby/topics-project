require 'rails_helper'

describe Api::V0::TopicsController do
  describe '#index' do
    let(:json) { ActiveSupport::JSON.decode(response.body) }

    before do 
      Topic.create(:title => 'Sample Title', :description => 'Sample Description')
      Topic.create(:title => 'Super Cool Stuff', :description => 'Sample Description')
      get :index, :format => :json 
    end

    it "should receive an :ok HTTP response from the server when calling /api/v0/topics" do
      expect(response.response_code).to equal(200)
    end

    specify "returns all topics" do
      expect(json.count).to eq(2)
    end
  end
end
