class BatchSerializer < ActiveModel::Serializer
  attributes :id, :name, :price, :start_date, :schedule, :strength, :status
  has_one :course
end
