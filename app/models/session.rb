class Session < ApplicationRecord
	has_many :accelerometer
	has_many :heart_rate
	has_many :participant_location
	has_many :participant_observation
end
