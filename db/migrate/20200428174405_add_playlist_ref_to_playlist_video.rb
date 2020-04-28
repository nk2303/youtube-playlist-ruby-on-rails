class AddPlaylistRefToPlaylistVideo < ActiveRecord::Migration[6.0]
  def change
    add_reference :playlist_videos, :playlist, null: false, foreign_key: true
  end
end
