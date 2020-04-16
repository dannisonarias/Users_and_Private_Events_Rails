class Registration < ApplicationRecord
  belongs_to :User
  belongs_to :Event
end
