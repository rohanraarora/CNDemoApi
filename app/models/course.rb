class Course < ActiveRecord::Base
  has_attached_file :cover_pic, default_url: "/images/missing.png"
  validates_attachment_content_type :cover_pic, content_type: /\Aimage\/.*\z/

  def as_json(options)
    CourseSerializer.new(self).as_json(root: false)
  end
end
