class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :password

  # has_many :favorites
  # has_many :memes
end
