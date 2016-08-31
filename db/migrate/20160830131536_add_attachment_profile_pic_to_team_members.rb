class AddAttachmentProfilePicToTeamMembers < ActiveRecord::Migration
  def self.up
    change_table :team_members do |t|
      t.attachment :profile_pic
    end
  end

  def self.down
    remove_attachment :team_members, :profile_pic
  end
end
