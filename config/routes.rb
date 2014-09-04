Rails.application.routes.draw do
  apipie
  namespace :api do
    namespace :v0 do
      resources :topics
    end
  end

  root "apipie/apipies#index"

  get "topics" => "topics#index"
end
