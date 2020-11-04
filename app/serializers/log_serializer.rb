class LogSerializer < ActiveModel::Serializer
  attributes :id, :date, :user
  has_one :mood
  has_one :user
end
