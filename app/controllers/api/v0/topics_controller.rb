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

  api :POST, "/topics/:post", "Creates a topic"
  def create
    topic = Topic.create(topic_params)
    head :created, location: api_v0_topics_path(topic)
  end

  private
  def topic_params
    params.require(:topic).permit(:title, :description)
  end


end
