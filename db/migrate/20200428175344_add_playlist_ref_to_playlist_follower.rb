class AddPlaylistRefToPlaylistFollower < ActiveRecord::Migration[6.0]
  def change
    add_reference :playlist_followers, :playlist, null: false, foreign_key: true
  end
end
