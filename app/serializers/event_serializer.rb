class EventSerializer < ActiveModel::Serializer
  attributes :id, :name, :price, :start_time, :end_time, :description, :venue, :speaker, :images

  def start_time
    object.start_time.to_i
  end

  def end_time
    object.end_time.to_i
  end

  def images
    object.event_images
  end
end
