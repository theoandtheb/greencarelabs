class CreateHeartRates < ActiveRecord::Migration[5.0]
  def change
    create_table :heart_rates do |t|
      t.date :date
      t.time :time
      t.integer :rate

      t.timestamps
    end
  end
end
