class Meme < ApplicationRecord
  has_many :favorites
  belongs_to :user
end
