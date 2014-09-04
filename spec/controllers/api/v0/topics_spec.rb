require 'rails_helper'

describe Api::V0::TopicsController do
  let(:json) { ActiveSupport::JSON.decode(response.body) }
  
  describe '#index' do
    it "should receive an :ok HTTP response from the server when calling /api/v0/topics" do
      get :index, :format => :json 
      expect(response.response_code).to equal(200)
    end

    specify "returns all topics" do
      FactoryGirl.create_list(:topic, 2)
      get :index, :format => :json 
      expect(json['topics'].count).to eq(2)
    end
  end

  describe '#show' do
    specify 'returns a topic' do
      topic = FactoryGirl.create(:topic)
      get :show, :id => topic.id, :format => :json 
      expect(json['topic']['title']).to eq(topic.title)
    end
  end

  describe "#create" do
    specify 'create a topic' do
      topic = FactoryGirl.build(:topic)
      post :create, topic: topic.slice(:title, :description).as_json, :format => :json
      expect(response.response_code).to eq(201)
      expect(Topic.count).to eq(1)
    end
  end
end
