class Event < ApplicationRecord
  has_many :registrations
  has_many :attendees, through: :registrations, source: 'user'
  belongs_to :creator, class_name: 'User'
  # scope to select all future events only
  scope :future_events, -> { where('date >= ?', Date.today).order(event_date: :asc) }
  scope :past_events, -> { where('date < ?', Date.today).order(event_date: :asc) }
  validates :name, presence: true
end
