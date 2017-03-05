class CreateAccelerometerData < ActiveRecord::Migration[5.0]
  def change
    create_table :accelerometer_data do |t|
      t.date :date_subm
      t.time :time_subm
      t.integer :x
      t.integer :y
      t.integer :z

      t.timestamps
    end
  end
end
