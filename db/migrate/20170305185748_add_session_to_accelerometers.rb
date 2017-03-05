class AddSessionToAccelerometers < ActiveRecord::Migration[5.0]
  def change
    add_reference :accelerometers, :session, foreign_key: true
  end
end
