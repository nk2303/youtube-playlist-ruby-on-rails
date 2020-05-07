class CommentSerializer < ActiveModel::Serializer
  attributes :id, :content, :user_id, :video_id, :user
end
