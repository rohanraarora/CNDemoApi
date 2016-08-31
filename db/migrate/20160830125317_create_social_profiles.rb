class CreateSocialProfiles < ActiveRecord::Migration
  def change
    drop_table :social_profiles
    create_table :social_profiles do |t|
      t.string :label
      t.string :url
      t.references :team_member, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
