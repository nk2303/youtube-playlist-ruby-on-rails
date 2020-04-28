# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



User.destroy_all
Playlist.destroy_all
Video.destroy_all
Comment.destroy_all



kim = User.create(username: "kim", password: "123", full_name:"Ngan Khong", email:"kim@gmail.com")

# playlist1 = Playlist.create()