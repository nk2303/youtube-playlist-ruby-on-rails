class AddYoutubeVideoIdToComments < ActiveRecord::Migration[6.0]
  def change
    add_column :comments, :youtube_video_id, :string
  end
end
