class AddSessionToHeartRates < ActiveRecord::Migration[5.0]
  def change
    add_reference :heart_rates, :session, foreign_key: true
  end
end
