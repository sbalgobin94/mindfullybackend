class MoodSerializer < ActiveModel::Serializer
  attributes :id, :name, :img_url, :value
end
