class CreateJoinTableBatchTeamMember < ActiveRecord::Migration
  def change
    create_join_table :batches, :team_members do |t|
      # t.index [:batch_id, :team_member_id]
      # t.index [:team_member_id, :batch_id]
    end
  end
end
