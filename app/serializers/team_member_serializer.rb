class TeamMemberSerializer < ActiveModel::Serializer
  attributes :id, :name, :bio, :qualifications, :teaching_experience, :industry_experience, :profile_pic, :social_profiles

  def profile_pic
    object.profile_pic.url
  end

end
