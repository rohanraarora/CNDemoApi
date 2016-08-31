json.extract! batch, :id, :course_id, :name, :price, :start_date, :schedule, :strength, :status, :created_at, :updated_at
json.url batch_url(batch, format: :json)