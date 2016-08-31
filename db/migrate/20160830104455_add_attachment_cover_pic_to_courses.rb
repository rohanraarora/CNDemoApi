class AddAttachmentCoverPicToCourses < ActiveRecord::Migration
  def self.up
    change_table :courses do |t|
      t.attachment :cover_pic
    end
  end

  def self.down
    remove_attachment :courses, :cover_pic
  end
end
