class Mood < ApplicationRecord
    has_many :logs, dependent: :destroy
    has_many :users, through: :logs
end
