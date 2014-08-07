Rails.application.routes.draw do
  namespace :api do
    namespace :v0 do
      resources :topics
    end
  end
end
