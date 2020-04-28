class AddUserRefToPlaylistFollower < ActiveRecord::Migration[6.0]
  def change
    add_reference :playlist_followers, :user, null: false, foreign_key: true
  end
end
