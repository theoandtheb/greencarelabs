class CreateParticipants < ActiveRecord::Migration[5.0]
  def change
    create_table :participants do |t|
      t.string :surname
      t.string :first_name

      t.timestamps
    end
  end
end
