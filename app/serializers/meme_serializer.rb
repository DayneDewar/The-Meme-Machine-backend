class MemeSerializer < ActiveModel::Serializer
  attributes :id, :name, :image, :top, :bottom, :likes

  belongs_to :user
  #  has_many :favorites
end