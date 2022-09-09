require 'rspotify/oauth'

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :spotify, "fc1190d871c64861add79c5aa6c7621f", "7d3d4964ca57455 98f929548323e3fe0", scope: 'user-read-recently-played user-read-currently-playing user-read-recently-played playlist-read-collaborative user-library-read'
end

OmniAuth.config.allowed_request_methods = [:post, :get]

<%= link_to 'Sign in with Spotify', '/auth/spotify', method: :post %>