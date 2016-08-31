class TeamMember < ActiveRecord::Base

  has_many :social_profiles
  has_attached_file :profile_pic, default_url: "/images/missing.png"
  validates_attachment_content_type :profile_pic, content_type: /\Aimage\/.*\z/

  def as_json(options)
    TeamMemberSerializer.new(self).as_json(root: false)
  end


end
