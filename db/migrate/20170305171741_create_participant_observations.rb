class CreateParticipantObservations < ActiveRecord::Migration[5.0]
  def change
    create_table :participant_observations do |t|
      t.date :date
      t.time :time

      t.timestamps
    end
  end
end
