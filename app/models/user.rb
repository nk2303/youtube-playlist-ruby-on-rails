class User < ApplicationRecord
    has_many :comments
    has_many :playlists

    has_secure_password

    validates :username, {presence: true, uniqueness: true}
    validates :password, {presence: true, on: :create}
    validates :full_name, presence: true
    validates :email, presence: true
end
