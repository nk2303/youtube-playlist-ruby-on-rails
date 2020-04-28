class AddVideoRefToComment < ActiveRecord::Migration[6.0]
  def change
    add_reference :comments, :video, null: false, foreign_key: true
  end
end
