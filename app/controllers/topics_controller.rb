class TopicsController < ApplicationController
  def index
    @topics = ["Testing in Rspec",
               "What is MVC?",
               "Fun with arrays in Ruby!",
               "How to code on a Chromebook!"]
  end
end
