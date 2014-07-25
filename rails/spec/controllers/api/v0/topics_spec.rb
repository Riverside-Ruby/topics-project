require 'rails_helper'

describe Api::V0::TopicsController do
  describe '#index' do
    let(:json) { ActiveSupport::JSON.decode(response.body) }

    before { get :index, :format => :json }

    it "should receive an :ok HTTP response from the server when calling /api/v0/topics" do
      expect(response.response_code).to equal(:ok)
    end
  end
end
