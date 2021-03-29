require 'rest-client'
require 'byebug'

meme_images = RestClient.get "https://ronreiter-meme-generator.p.rapidapi.com/images?rapidapi-key=d45c4bf44bmsh5794f268d449d19p18f503jsn618a9ca69a76"
meme_image_array = JSON.parse(meme_images)

# meme_image_array.each do |image|
#     Meme.create(user_id: 1, name: "test name", top: "test top", bottom: "test bottom", likes: 0, image: image)
# end

user1 = User.create(username: "GenericUser")

meme1 = Meme.create(user_id: 1, name: "Test 1", top:"test", bottom:"test", likes: 10, image:"https://cdn.vox-cdn.com/thumbor/cV8X8BZ-aGs8pv3D-sCMr5fQZyI=/1400x1400/filters:format(png)/cdn.vox-cdn.com/uploads/chorus_asset/file/19933026/image.png")

fav1 = Favorite.create(user_id: 1, meme_id: 1)


puts "****** SEEDED ********"
