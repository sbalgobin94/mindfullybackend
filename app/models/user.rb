class User < ApplicationRecord
    has_many :journals, dependent: :destroy
    has_many :moods, through: :logs
end
