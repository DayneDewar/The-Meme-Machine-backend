class FavoriteSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :meme

  belongs_to :user
  belongs_to :meme
end