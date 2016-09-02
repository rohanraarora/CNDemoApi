class BatchSerializer < ActiveModel::Serializer
  attributes :id, :name, :price, :start_date, :schedule, :strength, :status, :course_id

  has_many :instructors, serializer: TeamMemberCompactSerializer

  def start_date
    object.start_date.to_s
  end

  def course_id
    object.course.id
  end

  def instructors
    object.team_members
  end
end
