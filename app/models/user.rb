class User < ApplicationRecord
  has_many :registrations
  has_many :activities, through: :registrations , source: "Event"
  has_many :events, foreign_key: :creator_id
end
