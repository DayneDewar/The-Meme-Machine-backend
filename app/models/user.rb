class User < ApplicationRecord
    has_many :memes
    has_many :memes, through: :favorites
    has_many :favorites
end
