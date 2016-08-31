class EventSerializer < ActiveModel::Serializer
  attributes :id, :name, :price, :start_time, :end_time, :description, :venue, :speaker
end
