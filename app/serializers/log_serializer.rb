class LogSerializer < ActiveModel::Serializer
  attributes :id, :date, :user, :mood, :notes
  has_one :mood
  has_one :user
end
