class AddAccelerometerToAccelerometerData < ActiveRecord::Migration[5.0]
  def change
    add_reference :accelerometer_data, :accelerometer, foreign_key: true
  end
end
