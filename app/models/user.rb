class User < ApplicationRecord
  # has_many :activities, through: :Registrations ,source: Event
  has_many :events, foreign_key: :creator_id
end
