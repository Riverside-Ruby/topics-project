class Api::V0::TopicsController < ApplicationController
  respond_to :json

  def index
    respond_with Topic.all
  end

end
