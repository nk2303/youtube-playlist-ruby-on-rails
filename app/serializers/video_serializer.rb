class VideoSerializer < ActiveModel::Serializer
  attributes :id, :youtube_video_id, :playlists
  # has_many :comments, only: [:username]
  
end
