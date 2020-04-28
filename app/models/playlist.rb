class Playlist < ApplicationRecord
    belongs_to :user
    has_many :playlist_followers
    has_many :playlist_videos

end
