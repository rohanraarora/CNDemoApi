class SocialProfile < ActiveRecord::Base
  belongs_to :team_member

  def as_json()
    SocialProfileSerializer.new(self).as_json(root: false)
  end

end
