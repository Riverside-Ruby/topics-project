require 'rails_helper'

describe Api::V0::TopicsController do
  let(:json) { ActiveSupport::JSON.decode(response.body) }
  
  describe '#index' do
    before do 
      Topic.create!(:title => 'Sample Title', :description => 'Sample Description')
      Topic.create!(:title => 'Super Cool Stuff', :description => 'Sample Description')
      get :index, :format => :json 
    end

    it "should receive an :ok HTTP response from the server when calling /api/v0/topics" do
      expect(response.response_code).to equal(200)
    end

    specify "returns all topics" do
      expect(json['topics'].count).to eq(2)
    end
  end

  describe '#show' do
    before do 
      @topic = Topic.create(:title => 'Super Cool Stuff', :description => 'Sample Description')
      get :show, :id => @topic.id, :format => :json 
    end

    specify 'returns a topic' do
      expect(json['topic']['title']).to eq('Super Cool Stuff')
    end
  end
end
