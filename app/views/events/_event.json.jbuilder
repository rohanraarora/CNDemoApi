json.extract! event, :id, :name, :price, :start_time, :end_time, :description, :venue, :speaker, :created_at, :updated_at
json.url event_url(event, format: :json)