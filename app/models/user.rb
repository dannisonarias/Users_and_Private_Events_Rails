class User < ApplicationRecord
  has_many :registrations
  has_many :activities, through: :registrations, source: :event
  has_many :events, foreign_key: :creator_id
  validates :name, presence: true, uniqueness: true
end
