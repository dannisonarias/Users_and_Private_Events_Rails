class CreateRegistrations < ActiveRecord::Migration[5.2]
  def change
    create_table :registrations do |t|
      t.references :user, foreign_key: true
      t.references :event, foreign_key: true
      t.string :note

      t.timestamps
    end
  end
end
