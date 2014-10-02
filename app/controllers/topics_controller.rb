class TopicsController < ApplicationController
  def index
    @topics = Topic.all
  end

  def show
    @topic = Topic.find(params[:id])
  end

  def new
    @topic = Topic.new
  end

  def create
    @topic = Topic.new(topic_params)
    @topic.save!
    redirect_to @topic
  end

  def destroy
    @topic = Topic.find(params[:id])
    @topic.destroy!
    redirect_to topics_path
  end

private

  def topic_params
    params.require(:topic).permit(:title, :description)
  end
end
