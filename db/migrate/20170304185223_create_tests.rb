class CreateTests < ActiveRecord::Migration[5.0]
  def change
    create_table :tests do |t|
    	t.text :burp
      t.timestamps
    end
  end
end