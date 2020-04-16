class Event < ApplicationRecord
# has_many :attendees,through: :Registrations ,source: User
belongs_to :creator , class_name: "User", foreign_key: :user_id
end
