class Batch < ActiveRecord::Base
  belongs_to :course

  enum status: [:open,:completed,:running]
  enum schedule: [:weekend, :weekdays]
end
