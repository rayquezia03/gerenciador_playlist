Rails.application.routes.draw do
  resources :musics
  get 'musics', to: 'musics#index'
  get 'musics/create', to: 'musics#create'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
 

end
