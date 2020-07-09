class CommentSerializer < ActiveModel::Serializer
  attributes :id, :content, :user_id, :youtube_video_id, :user
end
