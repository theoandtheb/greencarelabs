class Accelerometer < ApplicationRecord
	belongs_to :session
	has_many :accelerometer_data
end
