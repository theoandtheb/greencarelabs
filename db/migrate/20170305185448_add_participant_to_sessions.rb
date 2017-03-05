class AddParticipantToSessions < ActiveRecord::Migration[5.0]
  def change
    add_reference :sessions, :participant, foreign_key: true
  end
end
