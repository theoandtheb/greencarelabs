class CreateParticipantLocations < ActiveRecord::Migration[5.0]
  def change
    create_table :participant_locations do |t|
      t.date :date
      t.time :time
      t.integer :x
      t.integer :y

      t.timestamps
    end
  end
end
