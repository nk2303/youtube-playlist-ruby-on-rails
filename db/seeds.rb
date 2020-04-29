# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Comment.destroy_all
PlaylistVideo.destroy_all
Video.destroy_all
Playlist.destroy_all
User.destroy_all


kim = User.create(username: "kim", password: "123", full_name:"Ngan Khong", email:"kim@gmail.com")

catplaylist = Playlist.create(playlist_name: "Cats", description: "Videos about cats", user_id: kim.id)
dogplaylist = Playlist.create(playlist_name: "Dogs", description: "Videos about dogs", user_id: kim.id)

catvid = Video.create(youtube_video_id: "tpiyEe_CqB4")
dogvid = Video.create(youtube_video_id: "sVaU1ctEkes")

catplaylistvideo = PlaylistVideo.create(playlist_id: catplaylist.id,video_id: catvid.id)
dogplaylistvideo = PlaylistVideo.create(playlist_id: dogplaylist.id,video_id: dogvid.id)



