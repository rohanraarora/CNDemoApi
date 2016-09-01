class Event < ActiveRecord::Base
  has_many :event_images

  def as_json(options)
    EventSerializer.new(self).as_json(root: false)
  end
end
