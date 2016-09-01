class EventImage < ActiveRecord::Base
  belongs_to :event
  has_attached_file :image, default_url: "/images/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

  def as_json()
    EventImageSerializer.new(self).as_json(root: false)
  end

end
