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
coffee = User.create(username: "coffee", password: "123", full_name:"Coffee the Cat", email:"coffee@gmail.com")

catplaylist = Playlist.create(playlist_name: "Cats", description: "Videos about cats", user_id: kim.id)
dogplaylist = Playlist.create(playlist_name: "Dogs", description: "Videos about dogs", user_id: kim.id)

catvid = Video.create(youtube_video_id: "tpiyEe_CqB4")
catvid2 = Video.create(youtube_video_id: "Lq8bpo9KWa8")
dogvid = Video.create(youtube_video_id: "sVaU1ctEkes")

catplaylistvideo = PlaylistVideo.create(playlist_id: catplaylist.id,video_id: catvid.id)
catplaylistvideo2 = PlaylistVideo.create(playlist_id: catplaylist.id,video_id: catvid2.id)
dogplaylistvideo = PlaylistVideo.create(playlist_id: dogplaylist.id,video_id: dogvid.id)


catvidcom1 = Comment.create(content: "This is so cute!", user_id: kim.id, video_id: catvid.id)
catvidcom2 = Comment.create(content: "I want a cat!", user_id: kim.id, video_id: catvid.id)
dogvidcom1 = Comment.create(content: "I want this puppy!", user_id: kim.id, video_id: dogvid.id)