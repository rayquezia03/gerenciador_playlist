class TrackSerializer < ActiveModel::Serializer
  attributes :id, :name, :artists, :images, :preview, :spotify_id
end
