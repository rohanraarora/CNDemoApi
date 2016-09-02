class Batch < ActiveRecord::Base
  belongs_to :course
  has_and_belongs_to_many :team_members

  enum status: [:open,:completed,:running]
  enum schedule: [:weekend, :weekdays]



  def as_json(options)
    BatchSerializer.new(self).as_json(root: false)
  end


end
