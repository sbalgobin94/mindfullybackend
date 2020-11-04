class JournalSerializer < ActiveModel::Serializer
  attributes :id, :date, :content
  has_one :user
end
