class CreatePlaylistVideos < ActiveRecord::Migration[6.0]
  def change
    create_table :playlist_videos do |t|

      t.timestamps
    end
  end
end
