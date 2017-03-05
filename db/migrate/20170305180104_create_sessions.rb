class CreateSessions < ActiveRecord::Migration[5.0]
  def change
    create_table :sessions do |t|
      t.date :date
      t.time :start_time
      t.time :end_time

      t.timestamps
    end
  end
end
