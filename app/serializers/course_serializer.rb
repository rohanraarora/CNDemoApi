class CourseSerializer < ApplicationSerializer
  attributes :id, :name, :overview , :curriculum ,:image_url

  def image_url
    object.cover_pic.url
  end
end

