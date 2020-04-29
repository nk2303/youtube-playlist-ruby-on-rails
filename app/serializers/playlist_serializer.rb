class PlaylistSerializer < ActiveModel::Serializer
  attributes :id, :playlist_name, :description, :videos
end
