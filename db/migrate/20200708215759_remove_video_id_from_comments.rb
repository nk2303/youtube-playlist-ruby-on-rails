class RemoveVideoIdFromComments < ActiveRecord::Migration[6.0]
  def change

    remove_column :comments, :video_id, :integer
  end
end
