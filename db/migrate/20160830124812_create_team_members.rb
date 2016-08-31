class CreateTeamMembers < ActiveRecord::Migration
  def change
    create_table :team_members do |t|
      t.string :name
      t.string :bio
      t.string :qualifications
      t.string :teaching_experience
      t.string :industry_experience

      t.timestamps null: false
    end
  end
end
