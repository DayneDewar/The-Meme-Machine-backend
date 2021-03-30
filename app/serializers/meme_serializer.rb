class MemeSerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers
  attributes :id, :name, :image, :top, :bottom, :likes, :meme_image_url


  def meme_image_url
    variant = object.meme_image.variant(resize: "300x300")
    return rails_representation_url(variant, only_path: true)
  end

  belongs_to :user
  #  has_many :favorites
end