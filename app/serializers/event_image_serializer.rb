class EventImageSerializer < ActiveModel::Serializer
  attributes :id ,:url

  def url
    object.image.url
  end
end
