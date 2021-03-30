class Meme < ApplicationRecord
  has_many :favorites
  belongs_to :user
  has_one_attached :meme_image
end
