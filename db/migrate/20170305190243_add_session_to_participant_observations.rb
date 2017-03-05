class AddSessionToParticipantObservations < ActiveRecord::Migration[5.0]
  def change
    add_reference :participant_observations, :session, foreign_key: true
  end
end
