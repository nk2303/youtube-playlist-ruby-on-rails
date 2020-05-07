class Playlist < ApplicationRecord
    belongs_to :user
    has_many :playlist_followers
    has_many :playlist_videos, dependent: :delete_all
    has_many :videos, through: :playlist_videos

    validates :playlist_name, presence: true

end
