class AddSessionToParticipantLocations < ActiveRecord::Migration[5.0]
  def change
    add_reference :participant_locations, :session, foreign_key: true
  end
end
