class AddReportToParticipants < ActiveRecord::Migration[5.0]
  def change
    add_reference :participants, :report, foreign_key: true
  end
end
