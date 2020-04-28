class CreateVideos < ActiveRecord::Migration[6.0]
  def change
    create_table :videos do |t|
      t.string :youtube_video_id

      t.timestamps
    end
  end
end
