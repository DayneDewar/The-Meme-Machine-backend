user1 = User.create(username: "GenericUser")

meme1 = Meme.create(user_id: 1, name: "Test 1", top:"test", bottom:"test", likes: 10, image:"https://cdn.vox-cdn.com/thumbor/cV8X8BZ-aGs8pv3D-sCMr5fQZyI=/1400x1400/filters:format(png)/cdn.vox-cdn.com/uploads/chorus_asset/file/19933026/image.png")

fav1 = Favorite.create(user_id: 1, meme_id: 1)


puts "****** SEEDED ********"
