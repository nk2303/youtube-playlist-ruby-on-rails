class Video < ApplicationRecord
    has_many :comments
    has_many :playlist_videos 
    
end
