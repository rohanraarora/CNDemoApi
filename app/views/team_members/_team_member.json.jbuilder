json.extract! team_member, :id, :name, :bio, :qualifications, :teaching_experience, :industry_experience, :created_at, :updated_at
json.url team_member_url(team_member, format: :json)