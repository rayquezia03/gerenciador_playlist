Rails.application.routes.draw do
  resources :musics
  get '/auth/spotify/callback', to: 'users#spotify'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  namespace :api do
    namespace :v1 do
      resources :tracks do
        collection do
          get :top_100
          get :random
          get :search
        end
      end
    end
  end
end
