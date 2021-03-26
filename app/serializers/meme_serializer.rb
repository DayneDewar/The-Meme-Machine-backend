class MemeSerializer < ActiveModel::Serializer
  attributes :id, :name, :image, :top, :bottom, :likes

   belongs_to :user
end
