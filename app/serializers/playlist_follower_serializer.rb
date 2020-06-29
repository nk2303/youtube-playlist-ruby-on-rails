class PlaylistFollowerSerializer < ActiveModel::Serializer
  attributes :id, :playlist_id, :user_id
end
