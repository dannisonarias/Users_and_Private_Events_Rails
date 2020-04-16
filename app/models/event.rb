class Event < ApplicationRecord
has_many :registrations
has_many :attendees, through: :registrations, source: "User"
belongs_to :creator , class_name: "User"
end
