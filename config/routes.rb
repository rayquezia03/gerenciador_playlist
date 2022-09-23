Rails.application.routes.draw do
  resources :playlists
  resources :musics
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: "static_pages#index"
  get 'sobre', to: 'static_pages#sobre'
  get 'contato', to: 'static_pages#contato'
  get 'Adicionar músicas', to: 'musics#new'
  get 'Adicionar músicas', to: 'musics#new'
  get 'criar usuario', to: 'user#new'
  get 'criar playlist', to: 'playlist#new'
  post 'https://api.spotify.com/v1/users/{user_id}/playlists', to: 'playlists#new'

  #A serem desenvolvidos: (documentação spotify)
  #get 'Obter playlist', to: 'playlists/{playlist_id}'
  #post 'Adicionar músicas à playlist', to: 'playlists/{playlist_id}/tracks'
  #get 'Obter detalhes da playlist', to: 'playlists/{playlist_id}/tracks'
  #range_start, insert_before, range_length and snapshot_id
  #put 'atualizar playlist', to: 'playlists/{playlist_id}/tracks'
  #delete 'excluir músicas à playlist', to: 'playlists/{playlist_id}/tracks'

  #get 'sobre', to: 'static_pages#sobre'
  
  resources :users, only: [:new , :create]
end
