class Api::V0::TopicsController < ApplicationController
  respond_to :json

  api :GET, "/topics", "Retrieve all topics"
  def index
    respond_with Topic.all
  end

  api :GET, "/topics/:id", "Show details for a specific topic"
  def show
    respond_with Topic.find(params[:id])
  end

end
