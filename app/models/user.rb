class User < ApplicationRecord
    has_many :memes
    has_many :favorites
    has_many :memes, through: :favorites, as: :fav_memes
    
end
