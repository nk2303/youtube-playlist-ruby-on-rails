class CreatePlaylists < ActiveRecord::Migration[6.0]
  def change
    create_table :playlists do |t|
      t.string :playlist_name
      t.string :description

      t.timestamps
    end
  end
end
