require 'byebug'


user1 = User.create(username: "GenericUser")

fav1 = Favorite.create(user_id: 1, meme_id: 1)


puts "****** SEEDED ********"
