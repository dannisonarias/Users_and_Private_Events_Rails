class AddIndexToRegistrations < ActiveRecord::Migration[5.2]
  def change
    add_index :registrations, :user_id
    add_index :registrations, :event_id
  end
end
