class LogSerializer < ActiveModel::Serializer
  attributes :id, :date, :user, :mood
  has_one :mood
  has_one :user
end
