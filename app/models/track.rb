class Track < ApplicationRecord

    def self.new_from_spotify_track(spotify_track)
        Track.new(
          spotify_id: spotify_track.id,
          name: spotify_track.name,
          artists: spotify_track.artists[0].name,
          image: spotify_track.album.images[0]["url"],
          preview: spotify_track.preview_url
        )
    end

    def top_100
        s_tracks = RSpotify::Playlist.find("1276640268","2kpoUUJ5a4Cw3feTkFJhZ2").tracks
        @tracks = s_tracks.map do |s_track|
        Track.new_from_spotify_track(s_track)
        render json: @tracks
    end   

    def self.create_from_spotify_track(spotify_track)
        track = self.new_from_spotify_track(spotify_track)
        track.save
        track
    end

    

    def random 
        s_tracks = RSpotify::Playlist.browse_featured.first.tracks 
        @tracks = s_tracks.map do |s_track|     Fim 
          de Track.new_from_spotify_track(s_track)
    renderizar json: @tracks
     end

     def search
        s_tracks = RSpotify::Track.search(params[:q])
        @tracks = s_tracks.map do |s_track|
          Track.new_from_spotify_track(s_track)
        end
    render json: @tracks
    end
    
end
