class VideoSerializer < ActiveModel::Serializer
  attributes :id, :youtube_video_id, :playlists, :comments
  has_many :comments, only: [:username]
  
end
